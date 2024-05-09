import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/title_bar.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          const MyTitleBar(title: 'Status', icon: Icons.more_vert),
          ListTile(
            leading: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(26),
                  child: Image.asset(
                    'lib/images/ahmadDp.png',
                    width: 50,
                    height: 50,
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 2,
                    child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        )))
              ],
            ),
            title: const Text('My Status',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle: Text('Tap to add status update',
              style: TextStyle(
                color: Colors.grey[300],
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Muted Updates', style: TextStyle(color: Colors.grey[300],)),
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down_outlined, color: Colors.grey[400],))
            ],
          )
        ],
      ),
    );
  }
}
