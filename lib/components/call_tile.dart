import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/call_log.dart';

class CallTile extends StatelessWidget {
  final CallLog callLog;
  const CallTile({super.key, required this.callLog});

   Icon getIcon(CallType callType) {
      switch (callType) {
        case CallType.missed:
          return const Icon(Icons.call_missed_sharp, color: Colors.red);
        case CallType.received:
          return const Icon(Icons.call_received_sharp, color: Colors.green);
        case CallType.dialed:
          return const Icon(Icons.call_made_sharp, color: Colors.blue);
        default:
        return const Icon(Icons.call_missed_sharp, color: Colors.red);
      }
    }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          color: Colors.teal[200],
          borderRadius: BorderRadius.circular(28)
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset( 
                'lib/images/${callLog.dpPath}', width: 45, height: 45, ),
        ),
      ),
      title: callLog.name.isEmpty ? Text(callLog.number) :Text(
        callLog.name,
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: Row(
        children: [
          getIcon(callLog.callType),
          const SizedBox(width: 5,),
          Text(
          '${callLog.timestamp}',
            style: TextStyle(color: Colors.grey[350]),
          ),
        ],
      ),
      trailing: IconButton(
        icon: const Icon(Icons.call, color: Colors.white70,),
        onPressed: () {},
      ),
    );
  }
}