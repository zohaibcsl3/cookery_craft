import 'package:get/get.dart';

import '../../dashboard/controllers/dashboard_controller.dart';
import '../../dashboard/model/recipe_model.dart';

class AccountController extends GetxController {
  final DashboardController _dashboardController =
      Get.find<DashboardController>();
  late List<Recipe> recipeList;

  @override
  void onInit() {
    recipeList = _dashboardController.recipeResponse.recipes
        .where((recipe) => recipe.isFavorite)
        .toList()
        .obs;

    print("Initialized");
    super.onInit();
  }
}
