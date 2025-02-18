import 'package:cookery_craft/ui/title_widgets/text_styles.dart';
import 'package:cookery_craft/ui/widgets/on_click.dart';
import 'package:cookery_craft/utils/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/heights_and_widths.dart';

class CartTile1 extends StatefulWidget {
  const CartTile1(
      {super.key,
      this.isCartPage = false,
      required this.name,
      required this.imagePath});

  final String name;
  final String imagePath;
  final bool isCartPage;

  @override
  State<CartTile1> createState() => _CartTile1State();
}

class _CartTile1State extends State<CartTile1> {
  @override
  Widget build(BuildContext context) {
    final CardTile1Controller controller = Get.put(CardTile1Controller());
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
        16.0,
      )),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 48.0,
                  width: 48.0,
                  decoration: customBoxDecoration(
                    color: Colors.grey.shade200,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(widget.imagePath),
                  ),
                ),
                w2,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: textFieldStyles(
                        weight: FontWeight.bold,
                        size: 18.0,
                      ),
                    ),
                    if (widget.isCartPage) ...[h0P4, Text("7.90\$")]
                  ],
                )
              ],
            ),
            Row(
              children: [
                OnClick(
                  onTap: () {
                    controller.subQuantity();
                  },
                  child: Container(
                    height: 24.0,
                    width: 24.0,
                    decoration: customBoxDecoration(
                      borderColor: Get.theme.primaryColor,
                      radius: 8.0,
                    ),
                    child: Center(
                      child: Text(
                        "-",
                        style: textFieldStyles(
                          size: 20.0,
                          color: Get.theme.primaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
                w2,
                Obx(() {
                  return Text(
                    controller.quantity.value.toString(),
                    style: textFieldStyles(
                      size: 16.0,
                    ),
                  );
                }),
                w2,
                OnClick(
                  onTap: () {
                    controller.addQuantity();
                  },
                  child: Container(
                    height: 24.0,
                    width: 24.0,
                    decoration: customBoxDecoration(
                      borderColor: Get.theme.primaryColor,
                      radius: 8.0,
                    ),
                    child: Center(
                      child: Text(
                        "+",
                        style: textFieldStyles(
                          size: 20.0,
                          color: Get.theme.primaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CardTile1Controller extends GetxController {
  RxInt quantity = RxInt(2);

  void addQuantity() {
    quantity.value++; // Correctly increment the value
  }

  void subQuantity() {
    if (quantity.value > 0) {
      quantity.value--; // Correctly decrement the value
    }
  }
}
