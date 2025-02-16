import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PasswordSuffixIcon extends StatelessWidget {
  const PasswordSuffixIcon({
    super.key,
    required this.isPasswordVisible,
    required this.onTap,
  });

  final bool isPasswordVisible;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      splashRadius: 20,
      icon: Icon(
        isPasswordVisible
            ? Icons.visibility_outlined
            : Icons.visibility_off_outlined,
        color: Get.theme.primaryColor,
        size: 24,
      ),
    );
  }
}
