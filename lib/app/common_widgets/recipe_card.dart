import 'package:cookery_craft/ui/title_widgets/text_styles.dart';
import 'package:cookery_craft/ui/widgets/on_click.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../generated/assets.dart';
import '../../utils/custom_card.dart';
import '../../utils/heights_and_widths.dart';
import '../routes/app_pages.dart';

class RecipeCard extends StatefulWidget {
  const RecipeCard({super.key, this.isFavorite = false});

  final bool isFavorite;

  @override
  State<RecipeCard> createState() => _RecipeCardState();
}

class _RecipeCardState extends State<RecipeCard> {
  @override
  Widget build(BuildContext context) {
    return OnClick(
      onTap: () {
        Get.toNamed(Routes.RECIPE);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            14.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  decoration: customBoxDecorationImage(
                    imageAsset: Assets.breakfast1,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 16,
                        top: 16,
                        child: Container(
                          height: 24.sp,
                          width: 24.sp,
                          decoration: customBoxDecoration(),
                          padding: EdgeInsets.all(
                            8.0,
                          ),
                          child: SvgPicture.asset(
                            widget.isFavorite
                                ? Assets.svgHeartFilled
                                : Assets.svgHeartUnfilled,
                            // height: widget.isFavorite ? 16.0 : 12.0,
                            // width: widget.isFavorite ? 16.0 : 12.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              h1P5,
              Expanded(
                child: Column(
                  children: [
                    Text(
                      "Healthy Taco Salad with fresh vegetable",
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: textFieldStyles(
                        color: Colors.black,
                        weight: FontWeight.w700,
                        size: 16.sp,
                      ),
                    ),
                    h1,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              Assets.svgCalories,
                              height: 14.0,
                              width: 14.0,
                              color: Colors.grey.shade500,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "120 Kcal",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: textFieldStyles(
                                color: Colors.grey.shade500,
                                size: 12.px,
                              ),
                            )
                          ],
                        ),
                        Icon(
                          Icons.circle_rounded,
                          color: Colors.grey.shade400,
                          size: 8.0,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              Assets.svgCalories,
                              height: 14.0,
                              width: 14.0,
                              color: Colors.grey.shade500,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "120 Kcal",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: textFieldStyles(
                                color: Colors.grey.shade500,
                                size: 12.px,
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
