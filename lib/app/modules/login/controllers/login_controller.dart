import 'package:cookery_craft/app/api/api_fetch.dart';
import 'package:cookery_craft/app/models/login_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../utils/display/display_utils.dart';
import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  RxBool isVisible = RxBool(false);
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController(),
      passwordController = TextEditingController();

  void login() async {
    var response = await ApiFetch.login(
        email: emailController.text, password: passwordController.text);

    if (response != null) {
      final LoginResponse? loginResponse = LoginResponse.fromJson(response);
      if (loginResponse?.token != null) {
        DisplayUtils.showSnackBar(Get.context!, "Login Successful");
        Get.offAllNamed(Routes.DASHBOARD);
      } else {
        DisplayUtils.removeLoader();
        DisplayUtils.showSnackBar(Get.context!, "Something Went Wrong");
      }
    }
  }

  void changeVisible() {
    isVisible.value = !isVisible.value;
  }

  @override
  void onInit() {
    emailController.text = "eve.holt@reqres.in";
    passwordController.text = "cityslicka";
    super.onInit();
  }
}
