import 'package:cookery_craft/ui/widgets/on_click.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../generated/assets.dart';
import '../../../../ui/title_widgets/text_styles.dart';
import '../../../../utils/custom_card.dart';
import '../../../../utils/heights_and_widths.dart';
import '../../../common_widgets/expandable_text_widgter.dart';
import '../../cart/widgets/ingredients_view.dart';
import '../controllers/recipe_controller.dart';

class RecipeView extends GetView<RecipeController> {
  const RecipeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Stack(
            children: [
              Container(
                height: 25.h,
                width: double.infinity,
                decoration: customBoxDecorationImage(
                  imageAsset: Assets.breakfast6,
                  radius: 0,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OnClick(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          height: 36,
                          width: 36,
                          decoration: customBoxDecoration(),
                          child: Icon(
                            Icons.close_sharp,
                          ),
                        ),
                      ),
                      OnClick(
                        onTap: () {},
                        child: Container(
                          height: 36,
                          width: 36,
                          decoration: customBoxDecoration(),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SvgPicture.asset(
                              Assets.svgHeartUnfilled,
                              height: 24.0,
                              width: 24.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 80.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24.sp),
                      topRight: Radius.circular(24.sp),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 12.0,
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 20.w,
                          decoration: customBoxDecoration(
                            color: Colors.grey.shade300,
                            borderWidth: 5.0,
                          ),
                        ),
                        h2,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Healthy Taco Salad",
                              style: textFieldStyles(
                                weight: FontWeight.bold,
                                size: 24.0,
                              ),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  Assets.svgTimeCircle,
                                  color: Colors.grey.shade400,
                                ),
                                w1P5,
                                Text(
                                  "20 min",
                                  style: context.textTheme.bodyLarge?.copyWith(
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        h1,
                        ExpandableTextWidget(
                            text:
                                "This Healthy Taco Salad is the universal delight of taco night This Healthy Taco Salad is the universal delight of taco night This Healthy Taco Salad is the universal delight of taco night This Healthy Taco Salad is the universal delight of taco night This Healthy Taco Salad is the universal delight of taco night This Healthy Taco Salad is the universal delight of taco night This Healthy Taco Salad is the universal delight of taco night This Healthy Taco Salad is the universal delight of taco night This Healthy Taco Salad is the universal delight of taco night"),
                        h1,
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 40.0,
                                        width: 40.0,
                                        decoration: customBoxDecoration(
                                          color: Colors.grey.shade300,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child:
                                              SvgPicture.asset(Assets.svgHerbs),
                                        ),
                                      ),
                                      w2,
                                      Text(
                                        "65g carbs",
                                        style: textFieldStyles(
                                          size: 16.0,
                                        ),
                                      )
                                    ],
                                  ),
                                  h1P5,
                                  Row(
                                    children: [
                                      Container(
                                        height: 40.0,
                                        width: 40.0,
                                        decoration: customBoxDecoration(
                                          color: Colors.grey.shade300,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child:
                                              SvgPicture.asset(Assets.svgHerbs),
                                        ),
                                      ),
                                      w2,
                                      Text(
                                        "65g carbs",
                                        style: textFieldStyles(
                                          size: 16.0,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 40.0,
                                        width: 40.0,
                                        decoration: customBoxDecoration(
                                          color: Colors.grey.shade300,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child:
                                              SvgPicture.asset(Assets.svgHerbs),
                                        ),
                                      ),
                                      w2,
                                      Text(
                                        "65g carbs",
                                        style: textFieldStyles(
                                          size: 16.0,
                                        ),
                                      )
                                    ],
                                  ),
                                  h1P5,
                                  Row(
                                    children: [
                                      Container(
                                        height: 40.0,
                                        width: 40.0,
                                        decoration: customBoxDecoration(
                                          color: Colors.grey.shade300,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child:
                                              SvgPicture.asset(Assets.svgHerbs),
                                        ),
                                      ),
                                      w2,
                                      Text(
                                        "65g carbs",
                                        style: textFieldStyles(
                                          size: 16.0,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        h2,
                        Expanded(
                          child: DefaultTabController(
                            length: 2, // Updated to match the number of tabs
                            child: Column(
                              children: [
                                h1,
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(
                                      14.0,
                                    ),
                                  ),
                                  child: TabBar(
                                    padding: const EdgeInsets.all(
                                      6.0,
                                    ),
                                    indicatorSize: TabBarIndicatorSize.tab,
                                    indicator: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(
                                        12.0,
                                      ),
                                    ),
                                    dividerHeight: 0,
                                    // indicatorColor: Colors.transparent,
                                    // labelColor: Colors.white,
                                    unselectedLabelColor: Colors.black,
                                    unselectedLabelStyle: textFieldStyles(
                                      color: Colors.white,
                                      weight: FontWeight.bold,
                                      size: 16.0,
                                    ),
                                    labelStyle: textFieldStyles(
                                      color: Colors.white,
                                      size: 16.0,
                                      weight: FontWeight.bold,
                                    ),
                                    tabs: const [
                                      Tab(
                                        child: Text("Ingredients"),
                                      ),
                                      Tab(
                                        child: Text("Instructions"),
                                      ),
                                    ],
                                  ),
                                ),
                                h1,
                                Expanded(
                                  child: TabBarView(
                                    children: [
                                      IngredientsView(),
                                      Container(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
