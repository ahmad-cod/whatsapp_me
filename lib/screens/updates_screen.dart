import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/channels.dart';
import 'package:whatsapp_clone/components/my_divider.dart';
import 'package:whatsapp_clone/components/status.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          MyDivider(),
          Status(),
          MyDivider(),
          Expanded(child: Channels()),
          Row(),
        ]  
          ),
      
    );
  }
}