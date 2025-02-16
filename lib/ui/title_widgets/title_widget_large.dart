import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TitleWidgetLarge extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const TitleWidgetLarge({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
              color: Colors.black,
              fontSize: (MediaQuery.sizeOf(context).width / 100) * 5),
        ),
        if (onTap != null)
          GestureDetector(
              onTap: onTap,
              child: Text(
                "View All",
                style: TextStyle(
                    color: Get.theme.primaryColor, fontWeight: FontWeight.bold),
              )),
      ],
    );
  }
}
