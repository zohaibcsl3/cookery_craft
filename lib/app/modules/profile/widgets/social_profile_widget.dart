import 'package:cookery_craft/ui/title_widgets/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../generated/assets.dart';
import '../../../../ui/widgets/on_click.dart';
import '../../../../utils/heights_and_widths.dart';
import '../../../../utils/helper_widgets.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textAlign: TextAlign.left,
          "Social",
          style: textFieldStyles(
            size: 16.0,
            weight: FontWeight.bold,
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
              SocialInfoWidget(
                onTap: () {},
                socialName: 'Facebook',
                socialIcon: Assets.svgFacebook,
              ),
              customDivider(
                color: Get.theme.primaryColor,
              ),
              SocialInfoWidget(
                onTap: () {},
                socialName: 'Instagram',
                socialIcon: Assets.svgInstagram,
              ),
              customDivider(
                color: Get.theme.primaryColor,
              ),
              SocialInfoWidget(
                onTap: () {
                  print('sds');
                },
                socialName: 'Linkedin',
                socialIcon: Assets.svgLinkedin,
              ),
              customDivider(
                color: Get.theme.primaryColor,
              ),
              SocialInfoWidget(
                socialName: 'Whatsapp',
                onTap: () {},
                socialIcon: Assets.svgWhatsapp,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SocialInfoWidget extends StatelessWidget {
  const SocialInfoWidget(
      {super.key,
      required this.socialName,
      required this.socialIcon,
      this.onTap});

  final String socialName;
  final String socialIcon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return OnClick(
      onTap: onTap ?? () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                socialIcon,
                height: 24,
                width: 24,
              ),
              w3,
              Text(
                socialName,
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
    );
  }
}
