import 'package:cookery_craft/ui/input/textfields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../ui/button/primary_button.dart';
import '../../../../ui/title_widgets/text_styles.dart';
import '../../../../utils/custom_card.dart';
import '../../../../utils/display/display_utils.dart';
import '../../../../utils/heights_and_widths.dart';
import '../controllers/add_card_controller.dart';

class AddCardView extends GetView<AddCardController> {
  AddCardView({super.key});
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController cardHolderController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    h2,
                    textFieldsWithTitle(
                        controller: cardNumberController,
                        hintText: "XXXX XXXX XXXX XXXX",
                        onEmptyText: "Card Number is Required",
                        maxWords: 16,
                        validation: true,
                        keyboardType: TextInputType.number),
                    h2,
                    textFieldsWithTitle(
                      controller: cardHolderController,
                      onEmptyText: "Please Enter Card Holder Name",
                      hintText: "Full Name",
                      maxWords: 256,
                      validation: true,
                    ),
                    h2,
                    Row(
                      children: [
                        Expanded(
                          child: textFieldsWithTitle(
                              controller: expiryDateController,
                              hintText: "Expiry Date",
                              maxWords: 5,
                              validation: true,
                              onEmptyText: "Expiry Date is Required",
                              keyboardType: TextInputType.datetime),
                        ),
                        w2,
                        Expanded(
                          child: textFieldsWithTitle(
                              controller: cvvController,
                              onEmptyText: "Cvv is Required",
                              hintText: "CVV",
                              maxWords: 3,
                              validation: true,
                              keyboardType: TextInputType.number),
                        ),
                      ],
                    ),
                  ],
                ),
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
                        if (_formKey.currentState!.validate()) {
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
                        } else {
                          DisplayUtils.showSnackBar(
                              context, "Please fill all required fields");
                        }
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
