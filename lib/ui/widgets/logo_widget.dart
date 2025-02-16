import 'package:flutter/material.dart';
import '../../generated/assets.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.pngLogo,
      width: 140,
      height: 38,
    );
  }
}
