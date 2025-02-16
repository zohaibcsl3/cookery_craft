import 'package:cookery_craft/ui/widgets/on_click.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../app/modules/dashboard/model/dashboard_model.dart';

class Navbar extends StatelessWidget {
  final List<BottomNavModel> tabs;
  final Function(int) onChanged;

  const Navbar({super.key, required this.tabs, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            tabs.length,
            (index) => OnClick(
                  onTap: () => onChanged(index),
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: SvgPicture.asset(
                      tabs[index].isSelected
                          ? tabs[index].selectedIcon
                          : tabs[index].unSelectedIcon,
                      color: tabs[index].isSelected
                          ? Get.theme.primaryColor
                          : Colors.black,
                      height: 24.0,
                      width: 24.0,
                    ),
                  ),
                )),
      ),
    );
  }
}
