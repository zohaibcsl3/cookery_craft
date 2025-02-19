import 'package:cookery_craft/ui/button/primary_button.dart';
import 'package:cookery_craft/ui/input/textfields.dart';
import 'package:cookery_craft/ui/widgets/password_suffix_widget.dart';
import 'package:cookery_craft/ui/widgets/rich_text_widget.dart';
import 'package:cookery_craft/utils/display/display_utils.dart';
import 'package:cookery_craft/utils/helper_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../generated/assets.dart';
import '../../../../utils/common_widgets.dart';
import '../../../../utils/heights_and_widths.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 30.h,
            child: Center(
              child: Image.asset(
                Assets.pngLogo,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Form(
              key: controller.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textFieldsWithTitle(
                    hintText: "Enter Email",
                    title: "Email",
                    controller: controller.emailController,
                  ),
                  h2,
                  Obx(() {
                    return textFieldsWithTitle(
                        title: "Password",
                        controller: controller.passwordController,
                        hintText: "Enter Password",
                        obscureText: controller.isVisible.value,
                        suffix: PasswordSuffixIcon(
                            isPasswordVisible: controller.isVisible.value,
                            onTap: () {
                              controller.changeVisible();
                            }));
                  }),
                  h2,
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Get.theme.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  h2,
                  PrimaryButton(
                    onPressed: () async {
                      // Get.offAllNamed(
                      //   Routes.DASHBOARD,
                      // );
                      if (controller.formKey.currentState!.validate()) {
                        controller.login();
                      } else {
                        DisplayUtils.showSnackBar(
                            context, "All Fields are Required");
                      }
                    },
                    title: "Sign in",
                    height: 60.0,
                    backgroundColor: Get.theme.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    borderRadius: 16.0,
                  ),
                  h0P5,
                  RichTextWidget(
                    firstText: "Don't have an account",
                    secondText: "Sign Up",
                    secondTextColor: Get.theme.primaryColor,
                    fontSize: 16.0,
                    onPressed: () {
                      Get.toNamed(
                        Routes.SIGNUP,
                      );
                    },
                  ),
                  h2,
                  Row(
                    children: [
                      Expanded(
                          child: customDivider(
                        hPadding: 8.0,
                      )),
                      Text(
                        "OR",
                        style: Get.textTheme.bodyMedium
                            ?.copyWith(color: Colors.grey.shade400),
                      ),
                      Expanded(
                          child: customDivider(
                        hPadding: 8.0,
                      )),
                    ],
                  ),
                  h2,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      LogoButton(logoPath: Assets.pngGoogle),
                      LogoButton(logoPath: Assets.pngFacebook),
                      LogoButton(
                        logoPath: Assets.pngAppleLight,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
          // Expanded(
          //   child: ,
          // )
        ],
      ),
    );
  }
}
