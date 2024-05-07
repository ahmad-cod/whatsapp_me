import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  final String message;
  const MessageTile({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
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
                                message,
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
}