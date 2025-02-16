import 'package:get/get.dart';

class SignupController extends GetxController {
  RxBool isVisible = RxBool(false);
  RxBool isConfirmVisible = RxBool(false);

  void changeVisible() {
    isVisible.value == !isVisible.value;
  }

  void changeConfirmVisible() {
    isConfirmVisible.value == !isConfirmVisible.value;
  }
}
