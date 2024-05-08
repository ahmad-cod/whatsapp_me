import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/channels.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          Divider(
            color: Colors.grey,
            height: 1,
          ),
          Expanded(child: Channels()),
          Row(),
        ]  
          ),
      
    );
  }
}