import 'package:cookery_craft/app/modules/account/views/account_view.dart';
import 'package:cookery_craft/app/modules/home/views/home_view.dart';
import 'package:cookery_craft/app/modules/notifications/views/notifications_view.dart';
import 'package:cookery_craft/app/modules/search/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../ui/navbar.dart';
import '../../cart/views/cart_view.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    final DashboardController controller = Get.put(DashboardController());
    return Scaffold(
      body: Obx(() {
        switch (controller.selectedIndex.value) {
          case 0:
            return HomeView();
          case 1:
            return Center(
              child: SearchView(),
            );
          case 4:
            return Center(
              child: AccountView(),
            );
          case 2:
            return Center(child: CartView());
          case 3:
            return Center(
              child: NotificationsView(),
            );

          default:
            return Center(child: Text('0'));
        }
      }),
      bottomNavigationBar: BottomAppBar(
        child: Navbar(
          tabs: controller.bottomBar,
          onChanged: (index) {
            controller.updateSelectedTab(index);
            setState(() {});
          },
        ),
      ),
    );
  }
}
