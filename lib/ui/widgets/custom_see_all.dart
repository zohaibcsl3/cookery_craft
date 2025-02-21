import 'package:cookery_craft/ui/title_widgets/text_styles.dart';
import 'package:cookery_craft/ui/widgets/on_click.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSeeAll extends StatelessWidget {
  const CustomSeeAll(
      {super.key,
      required this.leftText,
      this.rightText,
      this.showSeeAll = false,
      this.seeAllClick});
  final bool showSeeAll;
  final VoidCallback? seeAllClick;
  final String leftText;
  final String? rightText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          style: textFieldStyles(
            color: Colors.black,
            size: 20.0,
            weight: FontWeight.bold,
          ),
        ),
        if (showSeeAll)
          OnClick(
            onTap: seeAllClick ?? () {},
            child: Padding(
              padding: const EdgeInsets.only(
                right: 8.0,
              ),
              child: Text(
                rightText ?? "See All",
                style: textFieldStyles(
                  color: Get.theme.primaryColor,
                  size: 14.0,
                  weight: FontWeight.w600,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
