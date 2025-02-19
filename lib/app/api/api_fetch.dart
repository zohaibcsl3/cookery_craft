import 'package:cookery_craft/utils/display/display_utils.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'api_error.dart';

class ApiFetch {
  static Dio dio = Dio();

  static Future<dynamic> login(
      {required String email, required String password}) async {
    DisplayUtils.showLoader();
    try {
      // "eve.holt@reqrses.in"
      // "cityslicka"
      var data = {
        "email": email,
        "password": password,
      };
      var response = await dio.post("https://reqres.in/api/login", data: data);
      print(response);
      if (response.statusCode == 200) {
        print(response.data);
        DisplayUtils.removeLoader();
        DisplayUtils.showSnackBar(Get.context!, "Login Successful");
        return response.data;
      } else {
        DisplayUtils.removeLoader();
        DisplayUtils.showSnackBar(Get.context!, "Password or Email is wrong");
        return null;
      }
    } on DioException catch (e, stackTrace) {
      DisplayUtils.removeLoader();
      DisplayUtils.showSnackBar(Get.context!, "Password or Email is wrong");
      throw ApiError.fromDioException(e);
    } catch (e) {
      DisplayUtils.removeLoader();
      throw ApiError(message: '$e', code: 0);
    }
  }

  static Future<dynamic> signup(
      {required String email, required String password}) async {
    DisplayUtils.showLoader();
    try {
      // "eve.holt@reqrses.in"
      // "cityslicka"
      var data = {
        "email": email,
        "password": password,
      };
      var response =
          await dio.post("https://reqres.in/api/register", data: data);
      print(response);
      if (response.statusCode == 200) {
        print(response.data);
        DisplayUtils.removeLoader();
        DisplayUtils.showSnackBar(Get.context!, "Signup Successful");
        return response.data;
      } else {
        DisplayUtils.removeLoader();
        DisplayUtils.showSnackBar(Get.context!, "Password or Email is wrong");
        return null;
      }
    } on DioException catch (e, stackTrace) {
      DisplayUtils.removeLoader();
      DisplayUtils.showSnackBar(Get.context!, "Password or Email is wrong");
      throw ApiError.fromDioException(e);
    } catch (e) {
      DisplayUtils.removeLoader();
      throw ApiError(message: '$e', code: 0);
    }
  }
}
