import 'package:cookery_craft/app/models/ingredients_model.dart';
import 'package:get/get.dart';

import '../../../common_widgets/recipe_constants.dart';

class CartController extends GetxController {
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
