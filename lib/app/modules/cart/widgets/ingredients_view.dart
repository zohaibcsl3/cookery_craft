import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../ui/button/primary_button.dart';
import '../../../../utils/display/display_utils.dart';
import '../../../common_widgets/cart_tile_1.dart';

class IngredientsView extends StatefulWidget {
  const IngredientsView({super.key});

  @override
  State<IngredientsView> createState() => _IngredientsViewState();
}

class _IngredientsViewState extends State<IngredientsView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.symmetric(
              vertical: 12.0,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              // 2 items per row
              crossAxisSpacing: 10,
              // Space between columns
              mainAxisSpacing: 8,
              childAspectRatio: 3.8,
            ),
            itemCount: 20,
            // Number of items in the grid
            itemBuilder: (context, index) {
              return index != 19
                  ? CartTile1()
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: PrimaryButton(
                        borderRadius: 16.0,
                        hMargin: 0,
                        onPressed: () async {
                          DisplayUtils.showLoader();
                          await Future.delayed(
                              Duration(
                                seconds: 2,
                              ), () {
                            DisplayUtils.removeLoader();
                            DisplayUtils.showSnackBar(
                                context, "All Ingredients added to Cart");
                          });
                        },
                        title: "Add to Cart",
                        titleColor: Colors.white,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Get.theme.primaryColor,
                      ),
                    );
            },
          ),
        ),
      ],
    );
  }
}
