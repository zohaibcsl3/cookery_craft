import 'package:cookery_craft/app/modules/dashboard/model/recipe_model.dart';
import 'package:get/get.dart';

class RecipeController extends GetxController {
  Recipe recipe = Recipe.empty();

  @override
  void onInit() {
    if (Get.arguments != null) {
      recipe = Get.arguments;
      print(recipe.name);
      print("Arguments Available");
    }
    super.onInit();
  }
}
