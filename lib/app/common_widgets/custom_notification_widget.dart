import 'package:cookery_craft/ui/title_widgets/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:sizer/sizer.dart';

class AnnouncementCard extends StatelessWidget {
  final String title;
  final String time;
  final String iconPath;
  final String content;
  final bool isUnRead;

  const AnnouncementCard({
    super.key,
    required this.title,
    required this.time,
    required this.content,
    required this.iconPath,
    this.isUnRead = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isUnRead
          ? Get.theme.primaryColor.withOpacity(0.10)
          : Colors.transparent,
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: 30.sp,
              width: 30.sp,
              decoration: BoxDecoration(
                  color: Get.theme.primaryColor.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(
                    14.0,
                  )),
              // padding: const EdgeInsets.all(
              //   20.0,
              // ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(
                  iconPath,
                  height: 32.0,
                  width: 32.0,
                  color: Get.theme.primaryColor,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: textFieldStyles(
                        size: 14.0,
                        weight: FontWeight.bold,
                      )),
                  SizedBox(
                    width: 70.sp,
                    child: Text(
                        overflow: TextOverflow.ellipsis,
                        content,
                        maxLines: 4,
                        style: textFieldStyles(
                          size: 14.0,
                          color: Colors.grey.shade600,
                        )),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.topRight,
              child: Text(time,
                  style: textFieldStyles(
                    size: 12.0,
                    color: Colors.grey.shade600,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
