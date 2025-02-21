import 'package:cookery_craft/app/modules/dashboard/controllers/dashboard_controller.dart';
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

class RecipeCard extends StatefulWidget {
  const RecipeCard({super.key, required this.recipe});

  final Recipe recipe;

  @override
  State<RecipeCard> createState() => _RecipeCardState();
}

class _RecipeCardState extends State<RecipeCard> {
  @override
  Widget build(BuildContext context) {
    final DashboardController _controller = Get.find<DashboardController>();

    return OnClick(
      onTap: () {
        Get.toNamed(Routes.RECIPE, arguments: widget.recipe)?.then((v) {
          setState(() {});
        });
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
                    imageAsset: widget.recipe.imagePath,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 16,
                        top: 16,
                        child: OnClick(
                          onTap: () {
                            _controller
                                .toggleFavoriteStatus(widget.recipe.name);
                            setState(() {});
                          },
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
                        ),
                      )
                    ],
                  ),
                ),
              ),
              h1P5,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          Assets.svgTimeCircle,
                          height: 14.0,
                          width: 14.0,
                          color: Colors.grey.shade500,
                        ),
                        w1,
                        Text(
                          widget.recipe.makeTime,
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
