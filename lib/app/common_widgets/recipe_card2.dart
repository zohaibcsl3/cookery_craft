import 'package:cookery_craft/app/modules/dashboard/model/recipe_model.dart';
import 'package:cookery_craft/ui/title_widgets/text_styles.dart';
import 'package:cookery_craft/ui/widgets/on_click.dart';
import 'package:cookery_craft/utils/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../utils/heights_and_widths.dart';
import '../routes/app_pages.dart';

class RecipeCard2 extends StatefulWidget {
  const RecipeCard2({super.key, required this.recipe});

  final Recipe recipe;

  @override
  State<RecipeCard2> createState() => _RecipeCard2State();
}

class _RecipeCard2State extends State<RecipeCard2> {
  @override
  Widget build(BuildContext context) {
    return OnClick(
      onTap: () {
        Get.toNamed(Routes.RECIPE, arguments: widget.recipe);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: SizedBox(
          width: 35.w,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                12.0,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: (MediaQuery.sizeOf(context).height / 100) * 10,
                    width: (MediaQuery.sizeOf(context).height / 100) * 30,
                    decoration: customBoxDecorationImage(
                      imageAsset: widget.recipe.imagePath,
                    ),
                  ),
                  h1P5,
                  Text(
                    widget.recipe.name,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: textFieldStyles(
                      color: Colors.black,
                      weight: FontWeight.w700,
                      size: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
