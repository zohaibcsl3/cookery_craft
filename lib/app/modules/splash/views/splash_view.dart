import 'package:cookery_craft/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../generated/assets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  _navigateToDashboard() async {
    await Future.delayed(Duration(seconds: 6)); // Wait for 3 seconds
    Get.offAllNamed(Routes.WELCOME);
  }

  @override
  void initState() {
    _navigateToDashboard();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff70B9BE),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: SvgPicture.asset(
                Assets.svgLogo,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
