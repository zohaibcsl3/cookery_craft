import 'package:cookery_craft/app/modules/dashboard/model/recipe_model.dart';
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
import 'app_colors.dart';

class RecipeCard4 extends StatefulWidget {
  const RecipeCard4({super.key, required this.recipe});

  final Recipe recipe;

  @override
  State<RecipeCard4> createState() => _RecipeCard4State();
}

class _RecipeCard4State extends State<RecipeCard4> {
  @override
  Widget build(BuildContext context) {
    return OnClick(
      onTap: () {
        Get.toNamed(Routes.RECIPE, arguments: widget.recipe);
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
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: customBoxDecorationImage(
                    imageAsset: widget.recipe.imagePath,
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
                            widget.recipe.isFavorite
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
                flex: 2,
                child: Column(
                  children: [
                    Text(
                      widget.recipe.name,
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
                                  Assets.pngGirl,
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
                    ),
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
