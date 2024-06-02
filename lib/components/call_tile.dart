import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp_clone/models/call_log.dart';

class CallTile extends StatelessWidget {
  final CallLog callLog;
  const CallTile({super.key, required this.callLog});

  Icon getIcon(CallType callType) {
    switch (callType) {
      case CallType.missed:
        return const Icon(
          Icons.call_missed,
          color: Colors.red,
          size: 18,
        );
      case CallType.received:
        return Icon(
          Icons.call_received_sharp,
          color: Colors.green[800],
          size: 18,
        );
      case CallType.dialed:
        return const Icon(
          Icons.call_made_sharp,
          color: Colors.blue,
          size: 18,
        );
      default:
        return const Icon(Icons.call_missed_sharp, color: Colors.red);
    }
  }

  @override
  Widget build(BuildContext context) {
    String formattedTime =
        DateFormat('MMM d, h:mm a').format(callLog.timestamp);
    return ListTile(
      textColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 13),
      leading: Container(
        decoration: BoxDecoration(
            color: Colors.teal[200], borderRadius: BorderRadius.circular(28)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            'lib/images/${callLog.dpPath}',
            width: 45,
            height: 45,
          ),
        ),
      ),
      title: callLog.name.isEmpty
          ? Text(callLog.number)
          : Text(
              callLog.name,
            ),
      subtitle: Row(
        children: [
          getIcon(callLog.callType),
          const SizedBox(
            width: 5,
          ),
          Text(
            formattedTime,
            style: TextStyle(color: Colors.grey[350]),
          ),
        ],
      ),
      trailing: IconButton(
        icon: const Icon(
          Icons.call,
          color: Colors.white70,
        ),
        onPressed: () {},
      ),
    );
  }
}
