import 'package:flutter/material.dart';

class CallTile extends StatelessWidget {
  const CallTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(28)
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset( 
            'lib/images/jalasemdp.jpeg', width: 45, height: 45, ),
        ),
      ),
      title: const Text(
        'Aroyehun Ahmad',
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Row(
        children: [
          const Icon(Icons.call_made_sharp, color: Colors.white70, size: 14,),

          const SizedBox(width: 5,),

          Text(
            'called you at 5:00 am',
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