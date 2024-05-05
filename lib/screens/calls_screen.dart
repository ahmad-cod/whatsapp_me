import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/call_tile.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

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
              itemCount: 8,
              itemBuilder: (context, index) {
                return const CallTile();
              }
            ),
          ),
        ],
      ),
    );
  }
}