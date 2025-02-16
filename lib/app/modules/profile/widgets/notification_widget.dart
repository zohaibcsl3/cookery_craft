import 'package:cookery_craft/ui/title_widgets/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/heights_and_widths.dart';

class NotificationsWidget extends StatefulWidget {
  NotificationsWidget({super.key});

  @override
  State<NotificationsWidget> createState() => _NotificationsWidgetState();
}

class _NotificationsWidgetState extends State<NotificationsWidget> {
  bool _isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textAlign: TextAlign.left,
          "Notifications",
          style: textFieldStyles(
            size: 16.0,
            weight: FontWeight.bold,
          ),
        ),
        h1,
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20.0,
              ),
              border: Border.all(color: Get.theme.primaryColor)),
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Reminders & Alerts",
                style: textFieldStyles(
                  size: 14.0,
                ),
              ),
              Transform.scale(
                scale: 0.7,
                child: Switch(
                  value: _isSwitched,
                  onChanged: (bool value) {
                    setState(() {
                      _isSwitched = value;
                    });
                  },
                  activeTrackColor: Colors.black,
                  activeColor: Get.theme.primaryColor,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
