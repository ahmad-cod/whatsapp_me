import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/chat_tile.dart';
import 'package:whatsapp_clone/models/chat.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

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
          const SizedBox(height: 8,),
          const Row(),
          Expanded(
            child: ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                Chat chat = contacts[index];
                return ChatTile(chat: chat,);
              }
            ),
          ),
        ],
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){},
      //   tooltip: 'Chat',
      //   child: const Icon(Icons.add_comment_outlined),
      // ),
      // bottomNavigationBar: const Navbar(),
    );
  }
}