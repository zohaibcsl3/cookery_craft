import 'package:get/get.dart';

import '../../../../generated/assets.dart';
import '../model/dashboard_model.dart';

class DashboardController extends GetxController {
  // Observable bottomBar
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
      selectedIcon: Assets.svgSearchFilled,
      unSelectedIcon: Assets.svgSearch,
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
}
