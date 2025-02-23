import 'package:cookery_craft/ui/button/primary_button.dart';
import 'package:cookery_craft/ui/widgets/on_click.dart';
import 'package:cookery_craft/utils/helper_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../generated/assets.dart';
import '../../../../utils/heights_and_widths.dart';
import '../../../routes/app_pages.dart';
import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.primaryColor,
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Stack(
              children: [
                Center(
                  child: SvgPicture.asset(
                    Assets.svgIllustration,
                  ),
                ),
                Transform.rotate(
                  angle: 1.5708,
                  child: Center(
                    child: SvgPicture.asset(
                      Assets.svgIllustration,
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: 4.7124,
                  child: Center(
                    child: SvgPicture.asset(
                      Assets.svgIllustration,
                    ),
                  ),
                ),
                Positioned(
                    top: MediaQuery.of(context).size.height / 2.5,
                    left: MediaQuery.of(context).size.width / 7,
                    child: Image.asset(
                      Assets.pngCheese,
                    )),
                Positioned(
                    top: MediaQuery.of(context).size.height / 2.5,
                    left: MediaQuery.of(context).size.width / 1.8,
                    child: Image.asset(
                      Assets.pngLeg,
                    )),
                Positioned(
                    top: MediaQuery.of(context).size.height / 3.2,
                    left: MediaQuery.of(context).size.width / 3.5,
                    child: Image.asset(
                      Assets.pngLeaf,
                    )),
                Positioned(
                    top: MediaQuery.of(context).size.height / 3,
                    left: MediaQuery.of(context).size.width / 3.5,
                    child: Image.asset(
                      Assets.pngLeaf,
                    )),
                Positioned(
                    top: MediaQuery.of(context).size.height / 3,
                    left: MediaQuery.of(context).size.width / 1.7,
                    child: Image.asset(
                      Assets.pngOrange,
                    )),
                Positioned(
                    top: MediaQuery.of(context).size.height / 4.3,
                    left: MediaQuery.of(context).size.width / 6.5,
                    child: Image.asset(
                      Assets.pngEgg,
                    )),
                Positioned(
                    top: MediaQuery.of(context).size.height / 4.3,
                    left: MediaQuery.of(context).size.width / 1.5,
                    child: Image.asset(
                      Assets.pngMeat,
                    )),
                Positioned(
                  bottom: 20.0,
                  left: 0,
                  right: 0,
                  child: SvgPicture.asset(
                    Assets.svgLogo,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  bottom: -12,
                  left: 0,
                  right: 0,
                  child: customDivider(
                    color: Colors.white,
                    thickness: 1.0,
                    hPadding: 24.0,
                  ),
                )
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Title(
                    color: Colors.white,
                    child: Text(
                      "Help your path to health \ngoals with happiness",
                      textAlign: TextAlign.center,
                      style: context.textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  h2,
                  PrimaryButton(
                    onPressed: () {
                      Get.toNamed(
                        Routes.LOGIN,
                      );
                    },
                    borderRadius: 16.0,
                    title: "Login",
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    height: 50.0,
                    hMargin: 24.0,
                  ),
                  h2,
                  OnClick(
                    onTap: () {
                      Get.toNamed(
                        Routes.SIGNUP,
                      );
                    },
                    child: Text(
                      "Create New Account",
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
