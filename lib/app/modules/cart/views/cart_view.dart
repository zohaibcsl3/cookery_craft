import 'package:cookery_craft/ui/button/primary_button.dart';
import 'package:cookery_craft/ui/title_widgets/text_styles.dart';
import 'package:cookery_craft/utils/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/heights_and_widths.dart';
import '../../../common_widgets/app_colors.dart';
import '../../../common_widgets/cart_tile_1.dart';
import '../../../routes/app_pages.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    final CartController controller = Get.put(CartController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Cart",
          style: textFieldStyles(
            color: Colors.black,
            weight: FontWeight.bold,
            size: 14.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: appBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 18.0,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: Obx(() {
                return ListView.builder(
                  padding: EdgeInsets.symmetric(
                    vertical: 12.0,
                  ),
                  itemCount: controller.ingredients.length,
                  itemBuilder: (context, index) {
                    return CartTile1(
                      isCartPage: true,
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
                    );
                  },
                );
              }),
            ),
            h1,
            Expanded(
              flex: 4,
              child: Container(
                decoration: customBoxDecoration(
                  color: Colors.grey.shade200,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 24.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Subtotal",
                            style: textFieldStyles(
                              size: 16.0,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            "\$35.96",
                            style: textFieldStyles(
                              size: 16.0,
                              color: Colors.black,
                              weight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery",
                            style: textFieldStyles(
                              size: 16.0,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            "\$0.00",
                            style: textFieldStyles(
                              size: 16.0,
                              color: Colors.black,
                              weight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: textFieldStyles(
                              size: 16.0,
                              color: Colors.black54,
                              weight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "\$35.96",
                            style: textFieldStyles(
                              size: 16.0,
                              color: Colors.black,
                              weight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      PrimaryButton(
                        onPressed: () async {
                          Get.toNamed(Routes.ADD_CARD);
                        },
                        title: "Make Payment",
                        hMargin: 0,
                        height: 50.0,
                        borderRadius: 16.0,
                        backgroundColor: Get.theme.primaryColor,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
