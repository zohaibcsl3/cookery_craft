import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../generated/assets.dart';
import '../../../../ui/button/primary_button.dart';
import '../../../../ui/title_widgets/text_styles.dart';
import '../../../../utils/heights_and_widths.dart';
import '../../../common_widgets/app_colors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/profile_controller.dart';
import '../widgets/contact_us_profile_widget.dart';
import '../widgets/notification_widget.dart';
import '../widgets/personal_details_widget.dart';
import '../widgets/social_profile_widget.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBackgroundColor,
        title: const Text('Settings'),
        titleTextStyle: textFieldStyles(
          color: Colors.black,
          weight: FontWeight.bold,
          size: 18.0,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PersonalDetailsWidget(),
              h2,
              NotificationsWidget(),
              h2,
              const ContactUsWidget(),
              h2,
              const SocialWidget(),
              h3,
              PrimaryIconOutlineButton(
                onPressed: () {
                  Get.offAllNamed(Routes.LOGIN);
                },
                title: "Logout",
                titleColor: Get.theme.primaryColor,
                borderColor: Get.theme.primaryColor,
                height: 64,
                borderRadius: 16.0,
                iconSvgPath: Assets.svgLogout,
              )
            ],
          ),
        ),
      ),
    );
  }
}
