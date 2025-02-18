import 'package:cookery_craft/app/common_widgets/recipe_card2.dart';
import 'package:cookery_craft/app/common_widgets/recipe_card3.dart';
import 'package:cookery_craft/ui/widgets/custom_see_all.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../ui/input/textfields.dart';
import '../../../../ui/title_widgets/text_styles.dart';
import '../../../../ui/widgets/on_click.dart';
import '../../../../utils/custom_card.dart';
import '../../../../utils/heights_and_widths.dart';
import '../../../common_widgets/app_colors.dart';
import '../../dashboard/controllers/dashboard_controller.dart';
import '../controllers/search_controller.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    final SearchViewController controller = Get.put(SearchViewController());
    final DashboardController _controller = Get.find<DashboardController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBackgroundColor,
        title: const Text('Search'),
        titleTextStyle: textFieldStyles(
          color: Colors.black,
          weight: FontWeight.bold,
          size: 18.0,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 22.0,
          vertical: 12.0,
        ),
        child: Column(
          children: [
            textFieldsWithTitle(
                hintText: "Search",
                inputTextColor: Colors.black,
                prefix: Icon(
                  Icons.search,
                )),
            h1P5,
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
            h1P5,
            CustomSeeAll(
              leftText: "Popular Recipes",
            ),
            h2,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                _controller.recipeResponse.recipes
                    .where((recipe) => recipe.isFavorite)
                    .length,
                (index) {
                  var recipeList = _controller.recipeResponse.recipes
                      .where((recipe) => recipe.isFavorite)
                      .toList();

                  return RecipeCard2(
                    recipe: recipeList[index],
                  );
                },
              )),
            ),
            h2,
            CustomSeeAll(
              leftText: "Editor's Choice",
            ),
            h2,
            Expanded(child: Obx(() {
              var recipeList = _controller.recipeResponse.recipes
                  .where((recipe) =>
                      recipe.type.toLowerCase() ==
                      controller.selectedCategory.value.toLowerCase())
                  .toList();
              return ListView.builder(
                itemBuilder: (context, index) {
                  var recipe = recipeList[index];
                  return RecipeCard3(
                    recipe: recipe,
                  );
                },
                itemCount: recipeList.length,
              );
            }))
          ],
        ),
      ),
    );
  }
}
