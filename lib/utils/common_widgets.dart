import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ui/spacing.dart';
import '../ui/title_widgets/text_styles.dart';
import 'custom_card.dart';

class ButtonWithIcon extends StatelessWidget {
  const ButtonWithIcon(
      {super.key, required this.icon, required this.fieldName, this.onTap});

  final IconData icon;
  final String fieldName;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: customBoxDecoration(
          color: !Get.isDarkMode ? Colors.white : Colors.black,
          borderColor: Colors.grey,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 16.0,
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Icon(
                  icon,
                  size: 26,
                ),
              ),
              // sectionSpacerHorizontally(),
              Expanded(
                flex: 4,
                child: Center(
                  child: Text(
                    fieldName,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(),
        Row(
          children: [
            Expanded(
              child: Divider(
                color: Colors.grey[500],
              ),
            ),
            sectionSpacerHorizontally(),
            Text("or"),
            sectionSpacerHorizontally(),
            Expanded(
              child: Divider(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
        verticalSpace(),
      ],
    );
  }
}

class LogoButton extends StatelessWidget {
  const LogoButton({super.key, required this.logoPath});

  final String logoPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            logoPath,
          ),
        ),
      ),
    );
  }
}

class TCBottomAppBar extends StatelessWidget {
  const TCBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          textAlign: TextAlign.center,
          "By using Zeph Cure, you agree to the  Terms and Privacy Policy.",
          style: textFieldStyles(
            color: Get.isDarkMode ? Colors.white : Colors.black,
            weight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
