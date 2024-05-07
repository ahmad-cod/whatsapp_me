import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/call_tile.dart';
import 'package:whatsapp_clone/models/call_log.dart';

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
              itemCount: callLogs.length,
              itemBuilder: (context, index) {
                return CallTile(callLog: callLogs[index],);
              }
            ),
          ),
        ],
      ),
    );
  }
}