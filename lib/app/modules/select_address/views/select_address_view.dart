import 'package:cookery_craft/ui/button/primary_button.dart';
import 'package:cookery_craft/ui/title_widgets/text_styles.dart';
import 'package:cookery_craft/ui/widgets/on_click.dart';
import 'package:cookery_craft/utils/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../utils/heights_and_widths.dart';
import '../../../routes/app_pages.dart';
import '../controllers/select_address_controller.dart';

class SelectAddressView extends GetView<SelectAddressController> {
  const SelectAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    "Delivery Address",
                    style: textFieldStyles(
                      size: 16.0,
                      weight: FontWeight.w600,
                    ),
                  ),
                  h6,
                  Obx(() {
                    return Column(
                      children:
                          List.generate(controller.address.length, (index) {
                        var model = controller.address[index];
                        return AddressWidget(
                          addressModel: model,
                          selectedAddress: controller.selectedAddress.value,
                          onTap: () {
                            controller.selectedAddress.value = model.name;
                          },
                        );
                      }),
                    );
                  }),
                  h6,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 34.0,
                        width: 34.0,
                        decoration: customBoxDecoration(
                          borderColor: Get.theme.primaryColor,
                          radius: 100.0,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Get.theme.primaryColor,
                        ),
                      ),
                      w2,
                      Text("Add New Address")
                    ],
                  ),
                ],
              ),
            ),
            PrimaryButton(
              onPressed: () {
                Get.toNamed(Routes.ADD_CARD)?.then((v) {
                  Get.back();
                });
              },
              title: "Add Card",
              height: 50.0,
              hMargin: 0,
              backgroundColor: Get.theme.primaryColor,
              borderRadius: 16.0,
            )
          ],
        ),
      ),
    );
  }
}

class AddressWidget extends StatelessWidget {
  const AddressWidget({
    super.key,
    required this.addressModel,
    required this.selectedAddress,
    this.onTap,
  });

  final AddressModel addressModel;
  final String selectedAddress;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OnClick(
        onTap: onTap ?? () {},
        child: Container(
          height: 15.h,
          width: double.infinity,
          decoration: customBoxDecoration(
              borderWidth: 2,
              borderColor: selectedAddress == addressModel.name
                  ? Get.theme.primaryColor
                  : Colors.grey),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      addressModel.name,
                      style: textFieldStyles(
                        size: 15.0,
                      ),
                    ),
                    if (selectedAddress == addressModel.name)
                      Container(
                        height: 19.sp,
                        width: 19.sp,
                        decoration: customBoxDecoration(
                          color: Get.theme.primaryColor,
                          radius: 100.0,
                        ),
                        child: Icon(
                          Icons.check,
                          size: 16.0,
                          color: Colors.white,
                        ),
                      )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        addressModel.address,
                        maxLines: 2,
                        style: textFieldStyles(
                          size: 16.0,
                          weight: FontWeight.bold,
                        ),
                      ),
                    ),
                    if (selectedAddress == addressModel.name)
                      Text(
                        "Edit",
                        maxLines: 2,
                        style: textFieldStyles(
                          size: 14.0,
                          weight: FontWeight.bold,
                          color: Get.theme.primaryColor,
                        ),
                      )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
