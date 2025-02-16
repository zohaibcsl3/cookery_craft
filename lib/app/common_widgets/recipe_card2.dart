import 'package:cookery_craft/ui/title_widgets/text_styles.dart';
import 'package:cookery_craft/utils/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../generated/assets.dart';
import '../../utils/heights_and_widths.dart';

class RecipeCard2 extends StatefulWidget {
  const RecipeCard2({super.key, this.isFavorite = false});

  final bool isFavorite;

  @override
  State<RecipeCard2> createState() => _RecipeCard2State();
}

class _RecipeCard2State extends State<RecipeCard2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: (MediaQuery.sizeOf(context).height / 100) * 10,
                  width: (MediaQuery.sizeOf(context).height / 100) * 30,
                  decoration: customBoxDecorationImage(
                    imageAsset: Assets.breakfast1,
                  ),
                ),
                h1P5,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
