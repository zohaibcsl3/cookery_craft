import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../generated/assets.dart';
import '../../utils/custom_card.dart';
import '../../utils/heights_and_widths.dart';

class CarousalCard extends StatelessWidget {
  const CarousalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 6.0,
      ),
      child: Container(
        height: 25.h,
        width: 80.w,
        decoration: customBoxDecoration(
          radius: 12.0,
          color: Get.theme.primaryColor,
        ),
        child: Stack(
          children: [
            Positioned(
                top: -80,
                left: -40,
                child: Transform.rotate(
                  angle: 4.9,
                  child: SvgPicture.asset(
                    Assets.svgVec1,
                  ),
                )),
            Positioned(
                bottom: -10,
                right: 10,
                child: Transform.rotate(
                  angle: 3.5,
                  child: SvgPicture.asset(
                    Assets.svgVec3,
                  ),
                )),
            Positioned(
                top: -80,
                right: -80,
                child: Container(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.height / 4,
                  decoration: customBoxDecoration(
                    color: Color(0xff84C3C7),
                    radius: 1000.0,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: ClipRRect(
                      child: Image.asset(
                        Assets.pngRec1,
                      ),
                    ),
                  ),
                )),
            Positioned(
                top: 20,
                right: 245,
                child: SvgPicture.asset(
                  Assets.svgRect1,
                )),
            Positioned(
                top: 40,
                right: 195,
                child: SvgPicture.asset(
                  Assets.svgRect2,
                )),
            Positioned(
                top: 50,
                right: 275,
                child: SvgPicture.asset(
                  Assets.svgRect3,
                )),
            Positioned(
              bottom: 16,
              left: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Asian white noodle\nwith extra seafood",
                    textAlign: TextAlign.center,
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  h1,
                  SizedBox(
                    width: 70.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 14.0,
                              child: ClipRRect(
                                child: SvgPicture.asset(
                                  Assets.svgPerson,
                                  height: 20.0,
                                  width: 20.0,
                                ),
                              ),
                            ),
                            w2,
                            Text(
                              "Zohaib Aamir",
                              style: context.textTheme.bodyLarge?.copyWith(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              Assets.svgTimeCircle,
                              color: Colors.white,
                            ),
                            w1P5,
                            Text(
                              "20 min",
                              style: context.textTheme.bodyLarge?.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
