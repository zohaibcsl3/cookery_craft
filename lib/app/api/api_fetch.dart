import 'dart:convert';

import 'package:cookery_craft/utils/display/display_utils.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../modules/search/controllers/search_controller.dart';
import 'api_error.dart';

class ApiFetch {
  static Dio dio = Dio();

  static Future<dynamic> login(
      {required String email, required String password}) async {
    DisplayUtils.showLoader();
    try {
      var data = {
        "email": email,
        "password": password,
      };
      var response = await dio.post("https://reqres.in/api/login", data: data);
      if (response.statusCode == 200) {
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
      if (response.statusCode == 200) {
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

  static Future<ChatMessage> generateAIResponse(String userMessage) async {
    const String apiKey =
        "AIzaSyDFQwfytvn2WQ12iOH_ZbiBLIPfWX6kXDA"; // Replace with your Gemini API Key
    const String apiUrl =
        "https://generativelanguage.googleapis.com/v1/models/gemini-pro:generateContent?key=$apiKey";

    try {
      var response = await dio.post(
        apiUrl,
        options: Options(headers: {"Content-Type": "application/json"}),
        data: jsonEncode({
          "contents": [
            {
              "parts": [
                {"text": userMessage}
              ]
            }
          ]
        }),
      );

      if (response.statusCode == 200) {
        final jsonData = response.data;
        final String botResponse = jsonData["candidates"][0]["content"]["parts"]
        [0]["text"] ??
            "I couldn't understand.";

        print(botResponse);
        return ChatMessage(
          text: botResponse,
          isUser: false,
        );
      } else {
        return ChatMessage(
          text: "Sorry, I couldn't process your request.",
          isUser: false,
        );
      }
    } on DioException catch (e) {
      // Handle error
      return ChatMessage(
        text: "Sorry, something went wrong.",
        isUser: false,
      );
    } catch (e) {
      // Handle any other exceptions
      return ChatMessage(
        text: "Sorry, something went wrong.",
        isUser: false,
      );
    }
  }
}
