import 'package:get/get.dart';

class SearchViewController extends GetxController {
  RxList<String> categories = [
    "Breakfast",
    "Lunch",
    "Dinner",
    "Snacks",
    "Dessert",
    "Beverages",
  ].obs;

  RxString selectedCategory = RxString('Breakfast');

  void setCategory({required String category}) {
    selectedCategory.value = category;
  }
}
