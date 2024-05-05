import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/chart_tile.dart';
// import 'package:whatsapp_clone/components/my_appbar.dart';
// import 'package:whatsapp_clone/components/navbar.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      // appBar: const MyAppBar(title: 'WhatsApp'),
      body: Column(
        children: [
          const Divider(
            color: Colors.grey,
            height: 1,
          ),
          const Row(),
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return const ChatTile();
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