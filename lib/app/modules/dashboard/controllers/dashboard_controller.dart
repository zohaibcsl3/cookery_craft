import 'package:cookery_craft/app/common_widgets/recipe_constants.dart';
import 'package:get/get.dart';

import '../../../../generated/assets.dart';
import '../model/dashboard_model.dart';
import '../model/recipe_model.dart';

class DashboardController extends GetxController {
  // Observable bottomBar
  RxBool cancelPaymentDialog = RxBool(false);
  RxBool isPaymentCompleted = RxBool(false);

  void changePaymentDialog() {
    cancelPaymentDialog.value = true;
  }

  void changePaymentStatus() {
    isPaymentCompleted.value = true;
  }

  final RecipeResponse recipeResponse = RecipeResponse.fromJson(recipesJson);
  RxInt selectedIndex = RxInt(0);
  RxList<BottomNavModel> bottomBar = [
    BottomNavModel(
      title: "",
      isSelected: true,
      selectedIcon: Assets.svgHomeFilled,
      unSelectedIcon: Assets.svgHome,
    ),
    BottomNavModel(
      title: "",
      isSelected: false,
      selectedIcon: Assets.svgChatFilled,
      unSelectedIcon: Assets.svgChatUnfilled,
    ),
    BottomNavModel(
      title: "",
      isSelected: false,
      selectedIcon: Assets.svgBuy,
      unSelectedIcon: Assets.svgBuy,
    ),
    BottomNavModel(
      title: "",
      isSelected: false,
      selectedIcon: Assets.svgVolumeSelected,
      unSelectedIcon: Assets.svgVolumeUnselected,
    ),
    BottomNavModel(
      title: "",
      isSelected: false,
      selectedIcon: Assets.svgPersonFiled,
      unSelectedIcon: Assets.svgPerson,
    ),
  ].obs;

  // Function to update selected tab
  void updateSelectedTab(int index) {
    selectedIndex.value = index;
    for (int i = 0; i < bottomBar.length; i++) {
      bottomBar[i].isSelected = i == index; // Set selected tab
    }
    update(); // Notifies listeners to update UI
  }

  void toggleFavoriteStatus(String recipeName) {
    Recipe? recipe = recipeResponse.recipes.firstWhere(
      (r) => r.name.toLowerCase() == recipeName.toLowerCase(),
    );
    if (recipe != null) {
      recipe.isFavorite = !recipe.isFavorite;
      int recipeIndex = recipeResponse.recipes.indexOf(recipe);
      print(
          "Before Update -->${recipeResponse.recipes[recipeIndex].isFavorite}");
      recipeResponse.recipes[recipeIndex] = recipe;

      update();
      print(
          "After Update -->${recipeResponse.recipes[recipeIndex].isFavorite}");
    }
  }
}
