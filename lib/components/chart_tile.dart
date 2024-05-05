import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

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
            'lib/images/ahmadProfilePic.png', width: 45, height: 45, ),
        ),
      ),
      title: const Text(
        'Aroyehun Ahmad',
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        'Sincerity, Excellence, and Service are our values!',
        style: TextStyle(color: Colors.grey[350]),
      ),
    );
  }
}