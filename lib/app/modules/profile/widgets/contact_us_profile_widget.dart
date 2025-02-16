import 'package:cookery_craft/ui/title_widgets/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../generated/assets.dart';
import '../../../../ui/widgets/on_click.dart';
import '../../../../utils/heights_and_widths.dart';

class ContactUsWidget extends StatelessWidget {
  const ContactUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textAlign: TextAlign.left,
          "Contact us",
          style: textFieldStyles(
            size: 16.0,
            weight: FontWeight.bold,
          ),
        ),
        h1,
        OnClick(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20.0,
                ),
                border: Border.all(
                  color: Get.theme.primaryColor,
                )),
            padding: const EdgeInsets.symmetric(
              vertical: 18.0,
              horizontal: 16.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.svgMail,
                      height: 24,
                      color: Get.theme.primaryColor,
                      width: 24,
                    ),
                    w3,
                    Text(
                      "Contact us",
                      style: textFieldStyles(
                        size: 14.0,
                      ),
                    ),
                  ],
                ),
                SvgPicture.asset(
                  Assets.svgArrowRight,
                  height: 24,
                  width: 24,
                  color: Get.theme.primaryColor,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
