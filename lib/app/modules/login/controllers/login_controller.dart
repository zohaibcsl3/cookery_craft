import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool isVisible = RxBool(false);

  void changeVisible() {
    isVisible.value = !isVisible.value;
  }
}
