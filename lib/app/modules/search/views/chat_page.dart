import 'package:cookery_craft/app/modules/search/controllers/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key, required this.controller});

  final SearchViewController controller;

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chat with Ai Chef",
        ),
        centerTitle: true,
        // backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              // Watch for changes to the messages list
              return ListView.builder(
                reverse: true, // Display new messages at the bottom
                itemCount: widget.controller.messages.length,
                itemBuilder: (context, index) {
                  final message = widget.controller.messages[index];
                  return MessageBubble(message: message);
                },
              );
            }),
          ),
          Obx(() {
            return widget.controller.isThinking.value
                ? AiTypingLoader()
                : SizedBox.shrink();
          }),
          BottomAppBar(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: widget.controller.messageController,
                      onSubmitted: (v) {
                        widget.controller.sendMessage();
                      },
                      decoration: InputDecoration(
                        hintText: "Type a message...",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      if (widget.controller.messageController.text.isNotEmpty) {
                        widget.controller.sendMessage();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Widget to display a single message
class MessageBubble extends StatelessWidget {
  final ChatMessage message;

  const MessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment:
            !message.isUser ? Alignment.centerLeft : Alignment.centerRight,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: Get.width * 0.1, // Minimum width 20% of the screen width
            maxWidth: Get.width * 0.8, // Maximum width 80% of the screen width
          ),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
              color:
                  message.isUser ? Get.theme.primaryColor : Color(0xFF263736),
              borderRadius: BorderRadius.circular(20),
            ),
            child: SelectableText(
              message.text,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class AiTypingLoader extends StatelessWidget {
  const AiTypingLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
            color: Color(0xFF263736),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            "Typing...",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
