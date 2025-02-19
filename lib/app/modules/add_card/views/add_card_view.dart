import 'package:cookery_craft/ui/input/input_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../ui/button/primary_button.dart';
import '../../../../ui/title_widgets/text_styles.dart';
import '../../../../utils/custom_card.dart';
import '../../../../utils/display/display_utils.dart';
import '../../../../utils/heights_and_widths.dart';
import '../controllers/add_card_controller.dart';

class AddCardView extends GetView<AddCardController> {
  const AddCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Card'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            h5,
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  UnderLineInputField(
                    title: "CARD HOLDER NAME",
                    controller: TextEditingController(),
                  ),
                  h6,
                  UnderLineInputField(
                    title: "CARD NUMBER",
                    controller: TextEditingController(),
                  ),
                  h6,
                  Row(
                    children: [
                      Expanded(
                        child: UnderLineInputField(
                          title: "EXP DATE",
                          controller: TextEditingController(),
                        ),
                      ),
                      w2,
                      Expanded(
                        child: UnderLineInputField(
                          title: "CVC",
                          controller: TextEditingController(),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
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
                    PrimaryButton(
                      onPressed: () async {
                        Get.dialog(Dialog(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Processing...",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 16.0),
                                CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation(
                                    Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ));
                        Future.delayed(Duration(seconds: 5), () {
                          Get.back();
                          DisplayUtils.showSnackBar(context,
                              "Order Completed your ingredients are on the way");
                        }).then((v) {
                          Get.back();
                        });
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
            ))
          ],
        ),
      ),
    );
  }
}
