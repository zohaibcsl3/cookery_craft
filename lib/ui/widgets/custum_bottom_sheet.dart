import 'package:cookery_craft/utils/extensions/text_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../button/gradient_button.dart';

class CustomBottomSheet {
  static Future<String> authBottomSheet(BuildContext context) async {
    return await showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          )),
          builder: (context) {
            return SafeArea(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 6,
                      width: 34,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Log in or Sign up to Continue',
                            style: context.t2,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    GradientButton(
                      title: 'LOGIN',
                      onPressed: () {
                        Get.back();
                        // NavRouter.push(context, const LoginPage());
                      },
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'or',
                    ),
                    const SizedBox(height: 8),
                    GradientButton(
                      title: 'SIGN UP',
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            );
          },
        ) ??
        Future.value('nothing');
  }
}
