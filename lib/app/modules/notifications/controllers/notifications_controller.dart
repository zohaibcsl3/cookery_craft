import 'package:get/get.dart';

class NotificationsController extends GetxController {
  RxBool isRead = RxBool(false);
  void changeRead() {
    isRead.value = !isRead.value;
    update([isRead]);
  }
}
