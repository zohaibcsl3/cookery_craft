import 'package:cookery_craft/ui/title_widgets/text_styles.dart';
import 'package:cookery_craft/ui/widgets/custom_see_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../generated/assets.dart';
import '../../../../ui/widgets/on_click.dart';
import '../../../../utils/custom_card.dart';
import '../../../../utils/heights_and_widths.dart';
import '../../../common_widgets/app_colors.dart';
import '../../../common_widgets/recipe_card4.dart';
import '../../../routes/app_pages.dart';
import '../../dashboard/controllers/dashboard_controller.dart';
import '../controllers/account_controller.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    final AccountController controller = Get.put(AccountController());
    final DashboardController _controller = Get.find<DashboardController>();
    var recipeList = _controller.recipeResponse.recipes
        .where((recipe) => recipe.isFavorite)
        .toList();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 18.0,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Account",
                    style: textFieldStyles(
                      color: Colors.black,
                      size: 24.0,
                      weight: FontWeight.bold,
                    ),
                  ),
                  OnClick(
                    onTap: () {
                      Get.toNamed(Routes.PROFILE);
                    },
                    child: SvgPicture.asset(
                      Assets.svgSetting,
                    ),
                  )
                ],
              ),
              h1,
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    18.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18.0,
                    vertical: 12.0,
                  ),
                  child: Row(
                    children: [
                      Container(
                        decoration: customBoxDecoration(
                          color: Colors.transparent,
                          borderColor: colorPrimary,
                          radius: 100.0,
                          borderWidth: 1.2,
                        ),
                        child: CircleAvatar(
                          radius: 24.0,
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
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Zohaib Aamir",
                            style: textFieldStyles(
                              color: Colors.black,
                              size: 20.0,
                              weight: FontWeight.bold,
                            ),
                          ),
                          h0P4,
                          Text(
                            "Flutter Developer",
                            style: textFieldStyles(
                              color: Colors.grey.shade500,
                              size: 14.0,
                              weight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )),
                      OnClick(
                        onTap: () {
                          Get.toNamed(Routes.SETTINGS);
                        },
                        child: Container(
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
                        ),
                      )
                    ],
                  ),
                ),
              ),
              h1,
              CustomSeeAll(leftText: "My Favorites"),
              h1,
              Expanded(
                  child: recipeList.isNotEmpty
                      ? GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // 2 items per row
                            crossAxisSpacing: 10, // Space between columns
                            mainAxisSpacing: 10,
                            childAspectRatio: 0.7,
                          ),
                          itemCount: recipeList.length,
                          // Number of items in the grid
                          itemBuilder: (context, index) {
                            return RecipeCard4(
                              onFavTap: () {
                                _controller.toggleFavoriteStatus(
                                    recipeList[index].name);
                                setState(() {});
                              },
                              recipe: recipeList[index],
                            );
                          },
                        )
                      : Center(
                          child: Text(
                          "No Recipe in Favorites",
                        ))),
            ],
          ),
        ),
      ),
    );
  }
}
