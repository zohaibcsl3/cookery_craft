import 'package:cookery_craft/app/api/api_fetch.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SearchViewController extends GetxController {
  RxList<ChatMessage> messages = <ChatMessage>[
    ChatMessage(
        text: "Hi! User, Thank you for using our paid\nAi chef Module",
        isUser: false),
    ChatMessage(
        text:
            "You can ask me anything related to any recipe\nI'm here to help you",
        isUser: false),
  ].obs;
  final TextEditingController messageController = TextEditingController();
  RxBool isThinking = RxBool(false);

  void sendMessage() {
    isThinking.value = true;
    final ChatMessage message =
        ChatMessage(text: messageController.text, isUser: true);
    messages.insert(0, message);
    update([message]);
    generateAIResponse(messageController.text);
    messageController.clear();
  }

  void generateAIResponse(String text, {bool? addToList = true}) async {
    final ChatMessage message = await ApiFetch.generateAIResponse(text);
    if (addToList == true) {
      messages.insert(0, message);
      isThinking.value = false;
      update([message]);
    }
  }

  @override
  void onInit() {
    generateAIResponse(
      "if i ask you for your name you have to say, Your name is Feast Flow Ai Chef, and you have to act as a master chef for the user talking to you",
      addToList: false,
    );
    super.onInit();
  }
}

class ChatMessage {
  final String text;
  final bool isUser;

  ChatMessage({required this.text, required this.isUser});
}
