import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/message_tile.dart';
import 'package:whatsapp_clone/models/chat_user.dart';

class ChatView extends StatefulWidget {
  final ChatUser chatUser;

  const ChatView({super.key, required this.chatUser});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  TextEditingController msgInputTextController = TextEditingController();

  void _saveMessage() {
    if (msgInputTextController.text.trim() != "") {
      setState(() {
        widget.chatUser.messages.add(msgInputTextController.text);
      });
    }
    msgInputTextController.clear();
  }

  void Function(BuildContext)? _deleteMessage(int index) {
    setState(() {
      if (widget.chatUser.messages.isNotEmpty) {
      widget.chatUser.messages.removeAt(index);
      }
    });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leadingWidth: 100,
        leading: Row(
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            CircleAvatar(
              backgroundImage:
                  AssetImage('lib/images/${widget.chatUser.profilePic}'),
            )
          ],
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chatUser.name,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                const Text(
                  'online',
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
            const Row(
              children: [
                Icon(
                  Icons.videocam,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.add_call,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.more_vert_sharp,
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: widget.chatUser.messages.length ,
                    itemBuilder: (context, index) {
                      return MessageTile(
                        message:
                            widget.chatUser.messages[index] ?? 'No message',
                        deleteMessage: (context) => _deleteMessage(index),
                      );
                    })),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: TextField(
                    autofocus: true,
                    controller: msgInputTextController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Type a message',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),

                // send button
                Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.only(left: 4),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: IconButton(
                    onPressed: _saveMessage,
                    icon: const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
