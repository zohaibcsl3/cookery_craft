import 'package:cookery_craft/app/common_widgets/card_entry_dialogue.dart';
import 'package:cookery_craft/app/common_widgets/complete_payment_dialogue.dart';
import 'package:cookery_craft/app/modules/search/views/chat_page.dart';
import 'package:cookery_craft/ui/button/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../../../../generated/assets.dart';
import '../../../../ui/title_widgets/text_styles.dart';
import '../../../../utils/heights_and_widths.dart';
import '../../dashboard/controllers/dashboard_controller.dart';
import '../controllers/search_controller.dart';

class AiChatView extends StatefulWidget {
  const AiChatView({super.key});

  @override
  State<AiChatView> createState() => _AiChatViewState();
}

class _AiChatViewState extends State<AiChatView> {
  @override
  Widget build(BuildContext context) {
    final SearchViewController controller = Get.put(SearchViewController());
    final DashboardController _controller = Get.find<DashboardController>();
    return Stack(
      children: [
        !_controller.isPaymentCompleted.value
            ? SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset(
                        Assets.svgAiChatBot,
                        width: 60.w,
                      ),
                      h2,
                      Text(
                        "Complete your Payment to get start with Ai Chef Bot",
                        textAlign: TextAlign.center,
                        style: textFieldStyles(
                          weight: FontWeight.bold,
                          size: 18.0,
                        ),
                      ),
                      h2,
                      PrimaryButton(
                        onPressed: () {
                          Get.dialog(
                            CardEntryDialogue(),
                            barrierDismissible: false,
                          ).then((v) {
                            Get.dialog(
                              CompletePaymentDialogue(),
                              barrierDismissible: false,
                            );
                          });
                        },
                        title: "Complete Payment",
                        backgroundColor: Get.theme.primaryColor,
                        fontWeight: FontWeight.bold,
                        height: 50.0,
                      ),
                    ],
                  ),
                ),
              )
            : ChatPage(controller: controller),
        if (!_controller.cancelPaymentDialog.value)
          Container(
            color: Colors.grey.withOpacity(0.2),
            height: Get.height,
            width: Get.width,
            child: Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                12.0,
              )),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Lottie.asset(
                      Assets.svgAiChat,
                      // height: 200.0,
                      width: 150.0,
                      repeat: true,
                    ),
                    h1,
                    Text(
                      "Welcome to FeastFlow Ai Chef Bot",
                      style: textFieldStyles(
                        color: Colors.black,
                        weight: FontWeight.bold,
                        size: 16.0,
                      ),
                    ),
                    h1,
                    Text(
                      "FeastFlow is a platform that connects local chefs with customers looking for unique, delicious, and affordable recipes. We specialize in creating personalized meal plans that cater to your dietary needs, preferences, and budget. To get started, please enter your email address below and we'll send you a verification link.",
                      textAlign: TextAlign.center,
                      style: textFieldStyles(
                        color: Colors.black,
                        size: 12.0,
                        weight: FontWeight.w600,
                      ),
                    ),
                    h2,
                    Row(
                      children: [
                        Expanded(
                          child: PrimaryButton(
                            onPressed: () {
                              Get.dialog(
                                CardEntryDialogue(),
                                barrierDismissible: false,
                              ).then((v) {
                                Get.dialog(
                                  CompletePaymentDialogue(),
                                  barrierDismissible: false,
                                ).then((v) {
                                  _controller.changePaymentDialog();
                                  _controller.changePaymentStatus();
                                  setState(() {});
                                });
                              });
                            },
                            height: 50.0,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Get.theme.primaryColor,
                            hMargin: 0,
                            title: "Complete Payment",
                          ),
                        ),
                        w2,
                        Expanded(
                          child: PrimaryOutlineButton(
                            onPressed: () {
                              _controller.changePaymentDialog();
                              setState(() {});
                            },
                            height: 50.0,
                            titleColor: Get.theme.primaryColor,
                            borderColor: Get.theme.primaryColor,
                            title: "Cancel",
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
