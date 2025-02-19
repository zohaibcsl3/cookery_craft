import 'package:cookery_craft/app/models/signup_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../utils/display/display_utils.dart';
import '../../../api/api_fetch.dart';
import '../../../routes/app_pages.dart';

class SignupController extends GetxController {
  RxBool isVisible = RxBool(false);
  RxBool isConfirmVisible = RxBool(false);
  final formKey = GlobalKey<FormState>();

  void changeVisible() {
    isVisible.value = !isVisible.value; // Corrected the operator to '='
  }

  void changeConfirmVisible() {
    isConfirmVisible.value =
        !isConfirmVisible.value; // Corrected the operator to '='
  }

  final TextEditingController emailController = TextEditingController(),
      passwordController = TextEditingController(),
      confirmPasswordController = TextEditingController();

  void signup() async {
    var response = await ApiFetch.signup(
        email: emailController.text, password: passwordController.text);

    if (response != null) {
      final SignUpResponse? signUpResponse = SignUpResponse.fromJson(response);
      if (signUpResponse?.token != null) {
        DisplayUtils.showSnackBar(Get.context!, "Signup Successful");
        Get.offAndToNamed(Routes.DASHBOARD);
      } else {
        DisplayUtils.removeLoader();
        DisplayUtils.showSnackBar(Get.context!, "Something Went Wrong");
      }
    }
  }
}
