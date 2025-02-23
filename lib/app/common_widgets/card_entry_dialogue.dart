import 'package:cookery_craft/generated/assets.dart';
import 'package:cookery_craft/ui/button/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../../ui/input/textfields.dart';
import '../../utils/heights_and_widths.dart';

class CardEntryDialogue extends StatelessWidget {
  const CardEntryDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController cardNumberController = TextEditingController();
    final TextEditingController cardHolderController = TextEditingController();
    final TextEditingController expiryDateController = TextEditingController();
    final TextEditingController cvvController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          12.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Lottie.asset(
                Assets.svgCards,
                width: 50.w,
              ),
              h1,
              textFieldsWithTitle(
                  title: "Card Number",
                  controller: cardNumberController,
                  hintText: "XXXX XXXX XXXX XXXX",
                  onEmptyText: "Card Number is Required",
                  maxWords: 16,
                  validation: true,
                  keyboardType: TextInputType.number),
              h1,
              textFieldsWithTitle(
                title: "Card Holder Name",
                controller: cardHolderController,
                onEmptyText: "Please Enter Card Holder Name",
                hintText: "Full Name",
                maxWords: 256,
                validation: true,
              ),
              h1,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: textFieldsWithTitle(
                        title: "Expiry Date",
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
                        title: "Cvv",
                        onEmptyText: "Cvv is Required",
                        hintText: "CVV",
                        maxWords: 3,
                        validation: true,
                        keyboardType: TextInputType.number),
                  ),
                ],
              ),
              h1,
              PrimaryButton(
                backgroundColor: Get.theme.primaryColor,
                height: 50.0,
                hMargin: 0,
                onPressed: () {
                  Get.back();
                },
                title: "Complete Payment",
              )
            ],
          ),
        ),
      ),
    );
  }
}
