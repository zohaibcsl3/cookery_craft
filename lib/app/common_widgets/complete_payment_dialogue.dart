import 'package:cookery_craft/generated/assets.dart';
import 'package:cookery_craft/ui/button/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class CompletePaymentDialogue extends StatelessWidget {
  const CompletePaymentDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset(
            Assets.svgDonePayment,
            width: 250.0,
          ),
          PrimaryButton(
            onPressed: () {
              Get.back();
            },
            title: "Go to Chat Screen",
            height: 50.0,
            hMargin: 0,
            backgroundColor: Get.theme.primaryColor,
          )
        ],
      ),
    );
  }
}
