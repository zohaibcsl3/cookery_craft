import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  final TextEditingController nameController = TextEditingController(),
      emailController = TextEditingController(),
      passwordController = TextEditingController();

  RxBool isPasswordVisible = RxBool(false);

  void changePasswordVisibility() {
    if (isPasswordVisible.value == false) {
      isPasswordVisible.value = true;
    }
    else {
      isPasswordVisible.value = false;
    }
  }

  @override
  void onInit() {
    nameController.text = "Hamza";
    emailController.text = "eve.holt@reqres.in";
    passwordController.text = "cityslicka";
    super.onInit();
  }
}
