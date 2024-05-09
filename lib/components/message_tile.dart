import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MessageTile extends StatelessWidget {
  final String message;
  final Function(BuildContext)? deleteMessage;
  const MessageTile(
      {super.key, required this.message, required this.deleteMessage});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
              
          child: Slidable(
            endActionPane: ActionPane(motion: const StretchMotion(), children: [
                  SlidableAction(
                    backgroundColor: Colors.red,
                    onPressed: deleteMessage,
                    icon: Icons.delete,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ]),
            child: Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(5)),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                        child: Text(
                      message,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    )),
                    const Text(
                      '7:30pm',
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    const Icon(
                      Icons.check,
                      size: 11,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
