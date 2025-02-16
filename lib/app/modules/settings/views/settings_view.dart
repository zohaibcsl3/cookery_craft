import 'package:cookery_craft/ui/button/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../generated/assets.dart';
import '../../../../ui/input/textfields.dart';
import '../../../../ui/spacing.dart';
import '../../../../ui/title_widgets/text_styles.dart';
import '../../../../utils/custom_card.dart';
import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 4.0,
          ),
          child: PrimaryButton(
            onPressed: () {},
            title: "Save Changes",
            height: 50.0,
            backgroundColor: Get.theme.primaryColor,
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text('Edit Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 16.0,
          ),
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  height: Get.height * 0.15,
                  width: Get.height * 0.15,
                  child: Stack(
                    children: [
                      Container(
                        decoration: customBoxDecorationImage(
                          radius: 100.0,
                          imageAsset: Assets.pngGirl,
                        ),
                        height: Get.height * 0.15,
                        width: Get.height * 0.15,
                      ),
                      Positioned(
                        bottom: 4,
                        right: 4,
                        child: Container(
                          padding: EdgeInsets.all(
                            4.0,
                          ),
                          decoration: customBoxDecoration(
                            color: Colors.white,
                            borderColor: Get.theme.primaryColor,
                            radius: 100.0,
                          ),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.black,
                            size: 26.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              verticalSpace(),
              textFieldsWithTitle(
                controller: TextEditingController(),
                hintText: "Enter Name",
                title: "Name",
                validation: false,
                titleStyle: textFieldStyles(
                  size: 16.0,
                  color: Colors.black,
                ),
                inputTextColor: Colors.black,
              ),
              verticalSpace(),
              textFieldsWithTitle(
                controller: TextEditingController(),
                hintText: "Enter Email",
                title: "Email",
                validation: false,
                titleStyle: textFieldStyles(
                  size: 16.0,
                  color: Colors.black,
                ),
                inputTextColor: Colors.black,
              ),
              verticalSpace(),
              textFieldsWithTitle(
                controller: TextEditingController(),
                hintText: "Enter Password",
                title: "Password",
                validation: false,
                titleStyle: textFieldStyles(
                  size: 16.0,
                  color: Colors.black,
                ),
                inputTextColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
