import 'package:cookery_craft/app/common_widgets/app_colors.dart';
import 'package:cookery_craft/ui/widgets/custom_see_all.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../generated/assets.dart';
import '../../../../ui/title_widgets/text_styles.dart';
import '../../../../utils/display/display_utils.dart';
import '../../../../utils/heights_and_widths.dart';
import '../../../../utils/helper_widgets.dart';
import '../../../common_widgets/custom_notification_widget.dart';
import '../controllers/notifications_controller.dart';

class NotificationsView extends GetView<NotificationsController> {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    final NotificationsController controller =
        Get.put(NotificationsController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBackgroundColor,
        title: const Text('Notifications'),
        titleTextStyle: textFieldStyles(
          color: Colors.black,
          weight: FontWeight.bold,
          size: 18.0,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            children: [
              h1,
              CustomSeeAll(
                leftText: "Today",
                showSeeAll: true,
                seeAllClick: () {
                  controller.changeRead();
                  if (controller.isRead.value) {
                    DisplayUtils.showSnackBar(
                        context, "All Notifications Marked to Read");
                  } else {
                    DisplayUtils.showSnackBar(
                        context, "All Notifications Marked to UnRead");
                  }
                },
                rightText: "Mark all as read",
              ),
              h1,
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  // shrinkWrap: true,
                  // physics: const NeverScrollableScrollPhysics(),
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return Obx(() {
                      return AnnouncementCard(
                        isUnRead:
                            controller.isRead.value ? false : index % 3 == 2,
                        title: returnTitle(index)!,
                        time: "20 min",
                        content:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
                        iconPath: returnIcon(index)!,
                      );
                    });
                    return AnnouncementCard(
                      isUnRead:
                          controller.isRead.value ? false : index % 3 == 2,
                      title: returnTitle(index)!,
                      time: "20 min",
                      content:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
                      iconPath: returnIcon(index)!,
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return customDivider(
                      hPadding: 0.0,
                      thickness: 1.2,
                      color: Colors.grey.shade300,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String? returnIcon(int index) {
  if (index % 3 == 0) {
    return Assets.svgVolumeSelected;
  } else if (index % 3 == 1) {
    return Assets.svgPersonFiled;
  } else if (index % 3 == 2) {
    return Assets.svgHomeFilled;
  }
  return null;
}

String? returnTitle(int index) {
  if (index % 3 == 0) {
    return "New Dish Added";
  } else if (index % 3 == 1) {
    return "Some one liked your dish";
  } else if (index % 3 == 2) {
    return "Your dish is now Live";
  }
  return null;
}
