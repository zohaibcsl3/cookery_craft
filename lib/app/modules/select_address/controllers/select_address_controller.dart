import 'package:get/get.dart';

class SelectAddressController extends GetxController {
  RxString selectedAddress = RxString("");
  RxList<AddressModel> address = <AddressModel>[
    AddressModel(name: "Home", address: "33 - B Wahdat Road, Lahore, 54000"),
    AddressModel(
        name: "Office",
        address:
            "Lahore Garrison University, DHA phase 6, Sector C, Lahore, 54000"),
  ].obs;

  @override
  void onInit() {
    selectedAddress.value = address.first.name;
    super.onInit();
  }
}

class AddressModel {
  final String name;
  final String address;

  AddressModel({required this.name, required this.address});
}
