import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat.dart';

class ChatView extends StatefulWidget {
  final Chat chatUser;

  const ChatView({super.key, required this.chatUser});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  // variables: newMessage, messageList, msgInputTextController
  String newMessage = '';
  List messageList = ['Hello, world!'];
  TextEditingController msgInputTextController = TextEditingController();

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
              icon: const Icon(Icons.arrow_back, color: Colors.white,),
            ),
            const SizedBox(width: 5,),
            CircleAvatar(
              backgroundImage: AssetImage(widget.chatUser.imagePath),
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
                Text(widget.chatUser.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18
                  ),
                ),
                const Text('online',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12
                  ),
                ),
              ],
            ),

            const Row(
              children: [
                Icon(Icons.videocam, color: Colors.white,),
                SizedBox(width: 16,),
                Icon(Icons.add_call, color: Colors.white,),
                SizedBox(width: 16,),
                Icon(Icons.more_vert_sharp, color: Colors.white,)
              ],
            )
          ],
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messageList.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Text(
                                messageList[index],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16
                                ),

                              )
                            ),
                            const Text(
                              '7:30pm',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12
                              ),
                            ),
                            const SizedBox(width: 7,),
                            const Icon(Icons.check, size: 11, color: Colors.white,),
                          ],
                        ),
                      ),
                    ),

                  ],
                );
              }
            )
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .8,
                  child: TextField(
                    autofocus: true,
                    controller: msgInputTextController,
                  ),
                )
              ],
            )
        ],
      ),
    );
  }
}