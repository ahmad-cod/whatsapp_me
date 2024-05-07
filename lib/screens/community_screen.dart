import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/chat_tile.dart';
import 'package:whatsapp_clone/models/chat.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          const Divider(
            color: Colors.grey,
            height: 1,
          ),
          const Row(),
          Expanded(
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                Chat chat = chats[index];
                return ChatTile(chat: chat,);
              }
            ),
          ),
        ],
      ),
    );
  }
}