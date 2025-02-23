import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../ui/button/primary_button.dart';
import '../../../../utils/display/display_utils.dart';
import '../../../common_widgets/cart_tile_1.dart';
import '../../../common_widgets/recipe_constants.dart';
import '../../../models/ingredients_model.dart';

class IngredientsView extends StatefulWidget {
  const IngredientsView({super.key});

  @override
  State<IngredientsView> createState() => _IngredientsViewState();
}

class _IngredientsViewState extends State<IngredientsView> {
  @override
  Widget build(BuildContext context) {
    final IngredientsController controller = Get.put(IngredientsController());
    return Column(
      children: [
        Expanded(
          child: Obx(() {
            return ListView.builder(
              padding: EdgeInsets.symmetric(
                vertical: 12.0,
              ),
              itemCount: controller.ingredients.length + 1,
              itemBuilder: (context, index) {
                return controller.ingredients.length != index
                    ? CartTile1(
                        name: controller.ingredients[index].name,
                        imagePath: controller.ingredients[index].image,
                        quantity: controller.ingredients[index].quantity,
                        onAdd: () {
                          controller.updateIngredientQuantity(
                              controller.ingredients[index].name, 1);
                        },
                        onSubtract: () {
                          if (controller.ingredients[index].quantity >= 1) {
                            controller.updateIngredientQuantity(
                                controller.ingredients[index].name, -1);
                          }
                        },
                      )
                    : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PrimaryButton(
                          borderRadius: 16.0,
                          hMargin: 0,
                          height: 60.0,
                          onPressed: () async {
                            DisplayUtils.showLoader();
                            await Future.delayed(
                                Duration(
                                  seconds: 2,
                                ), () {
                              DisplayUtils.removeLoader();
                              DisplayUtils.showSnackBar(
                                  context, "All Ingredients added to Cart");
                            });
                          },
                          title: "Add to Cart",
                          titleColor: Colors.white,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Get.theme.primaryColor,
                        ),
                      );
              },
            );
          }),
        ),
      ],
    );
  }
}

class IngredientsController extends GetxController {
  RxList<Ingredient> ingredients = <Ingredient>[].obs;

  @override
  void onInit() {
    final IngredientsModel list = ingredientsModelFromJson(ingredientsList);
    ingredients = list.ingredients.obs;
    update([ingredients]);
    super.onInit();
  }

  // Method to update the quantity of an ingredient
  void updateIngredientQuantity(String ingredientName, int quantityChange) {
    // Find the ingredient by name
    int index = ingredients
        .indexWhere((ingredient) => ingredient.name == ingredientName);

    if (index != -1) {
      // Create a new ingredient object with the updated quantity
      Ingredient updatedIngredient = ingredients[index].copyWith(
        quantity: ingredients[index].quantity + quantityChange,
      );

      // Update the ingredient in the list
      ingredients[index] = updatedIngredient;

      // Notify listeners to update the UI
      update([ingredients]);
    }
  }
}
