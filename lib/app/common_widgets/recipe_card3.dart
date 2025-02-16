import 'package:cookery_craft/app/common_widgets/app_colors.dart';
import 'package:cookery_craft/ui/title_widgets/text_styles.dart';
import 'package:cookery_craft/utils/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../generated/assets.dart';
import '../../utils/heights_and_widths.dart';

class RecipeCard3 extends StatefulWidget {
  const RecipeCard3({super.key, this.isFavorite = false});

  final bool isFavorite;

  @override
  State<RecipeCard3> createState() => _RecipeCard3State();
}

class _RecipeCard3State extends State<RecipeCard3> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          12.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 12.h,
              width: 30.w,
              decoration: customBoxDecorationImage(
                imageAsset: Assets.breakfast1,
              ),
            ),
            w3,
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height / 105),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Healthy Taco Salad with fresh vegetable",
                      textAlign: TextAlign.left,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: textFieldStyles(
                        color: Colors.black,
                        weight: FontWeight.bold,
                        size: 16.0,
                      ),
                    ),
                    h1,
                    Row(
                      children: [
                        Container(
                          decoration: customBoxDecoration(
                            color: Colors.transparent,
                            borderColor: colorPrimary,
                            radius: 100.0,
                            borderWidth: 1.2,
                          ),
                          child: CircleAvatar(
                            radius: 14.0,
                            child: ClipOval(
                              child: ClipRRect(
                                child: Image.asset(
                                  Assets.pngCheese,
                                ),
                              ),
                            ),
                          ),
                        ),
                        w2,
                        Text(
                          "James Spider",
                          style: textFieldStyles(
                            color: Colors.grey.shade600,
                            size: 14.0,
                            weight: FontWeight.bold,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 24.sp,
              width: 24.sp,
              decoration: customBoxDecoration(
                color: Colors.black,
                radius: 14.0,
              ),
              child: Icon(
                Icons.arrow_right_alt_outlined,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
