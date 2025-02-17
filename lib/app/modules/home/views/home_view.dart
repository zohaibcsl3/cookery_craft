import 'package:cookery_craft/app/common_widgets/recipe_card.dart';
import 'package:cookery_craft/ui/title_widgets/text_styles.dart';
import 'package:cookery_craft/ui/title_widgets/title_widget.dart';
import 'package:cookery_craft/ui/widgets/custom_see_all.dart';
import 'package:cookery_craft/ui/widgets/on_click.dart';
import 'package:cookery_craft/utils/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../generated/assets.dart';
import '../../../../utils/heights_and_widths.dart';
import '../../../common_widgets/app_colors.dart';
import '../../../common_widgets/carousal_card.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 16.0,
        ),
        child: Column(
          children: [
            h2,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.sunny,
                          color: Get.theme.primaryColor,
                          size: 24.0,
                        ),
                        w2,
                        Text("Good Morning")
                      ],
                    ),
                    h0P2,
                    Text(
                      "Zohaib Aamir",
                      style: Get.context!.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SvgPicture.asset(
                  Assets.svgBuy,
                  color: Colors.black,
                )
              ],
            ),
            h2,
            TitleWidget(
              title: "Featured",
              textStyle: textFieldStyles(
                weight: FontWeight.bold,
                color: Colors.black,
                size: 20.0,
              ),
              padding: EdgeInsets.zero,
            ),
            h1,
            SizedBox(
              height: 20.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return CarousalCard();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return w5;
                },
                itemCount: 10,
              ),
            ),
            h2,
            CustomSeeAll(
              leftText: 'Category',
            ),
            h1,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: controller.categories.map((category) {
                return Obx(() {
                  return OnClick(
                    onTap: () {
                      controller.setCategory(category: category);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: customBoxDecoration(
                          radius: 30.0,
                          color: controller.selectedCategory.value == category
                              ? Get.theme.primaryColor
                              : colorSecondary,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12.0,
                            horizontal: 18.0,
                          ),
                          child: Text(
                            category,
                            style: Get.theme.textTheme.bodyLarge?.copyWith(
                              color:
                                  controller.selectedCategory.value == category
                                      ? Colors.white
                                      : Colors.black,
                              fontWeight:
                                  controller.selectedCategory.value == category
                                      ? FontWeight.w700
                                      : FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                });
              }).toList()),
            ),
            h2,
            CustomSeeAll(
              leftText: 'Popular Recipes',
            ),
            h1,
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 items per row
                  crossAxisSpacing: 10, // Space between columns
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7,
                ),
                itemCount: 20, // Number of items in the grid
                itemBuilder: (context, index) {
                  return RecipeCard(
                    isFavorite: index % 2 == 0,
                  );
                },
              ),
            ),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: List.generate(10, (index) {
            //       return RecipeCard2();
            //     }),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
