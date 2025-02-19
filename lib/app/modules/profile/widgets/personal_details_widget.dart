import 'package:cookery_craft/ui/title_widgets/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../generated/assets.dart';
import '../../../../utils/heights_and_widths.dart';
import '../../../../utils/helper_widgets.dart';

class PersonalDetailsWidget extends StatelessWidget {
  const PersonalDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textAlign: TextAlign.left,
          "Personal Details",
          style: textFieldStyles(
            size: 16.0,
            weight: FontWeight.normal,
          ),
        ),
        h1,
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20.0,
              ),
              border: Border.all(
                color: Get.theme.primaryColor,
              )),
          padding: const EdgeInsets.all(
            16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              PersonalDetailsInfo(
                fieldIcon: Assets.svgProfile,
                fieldName: 'Hamza',
              ),
              customDivider(color: Get.theme.primaryColor),
              const PersonalDetailsInfo(
                fieldIcon: Assets.svgMail,
                fieldName: 'eve.holt@reqres.in',
                isEditable: true,
              ),
              customDivider(color: Get.theme.primaryColor),
              PersonalDetailsInfo(
                fieldIcon: Assets.svgLock,
                fieldName: '************',
                isEditable: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PersonalDetailsInfo extends StatelessWidget {
  const PersonalDetailsInfo(
      {super.key,
      required this.fieldIcon,
      required this.fieldName,
      this.onEdit,
      this.isEditable = false});

  final String fieldIcon;
  final String fieldName;
  final bool? isEditable;
  final VoidCallback? onEdit;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              fieldIcon,
              color: Get.theme.primaryColor,
              height: 20,
              width: 20,
            ),
            w2,
            Text(
              fieldName,
              style: textFieldStyles(
                weight: FontWeight.normal,
                size: 14.0,
              ),
            ),
          ],
        ),
        if (isEditable!)
          InkWell(
            onTap: onEdit,
            child: SvgPicture.asset(
              Assets.svgEdit,
              color: Get.theme.primaryColor,
              height: 20,
              width: 20,
            ),
          ),
      ],
    );
  }
}
