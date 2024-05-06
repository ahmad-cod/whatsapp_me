import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key, required this.chat});

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(28)
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset( 
            chat.imagePath, width: 45, height: 45, ),
        ),
      ),
      title: Text(
        chat.name,
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        chat.message,
        style: TextStyle(color: Colors.grey[350]),
      ),
    );
  }
}