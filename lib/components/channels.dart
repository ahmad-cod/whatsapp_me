import 'package:flutter/material.dart';

class Channels extends StatelessWidget {
  const Channels({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Status',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          ),
          Icon(Icons.more_vert, color: Colors.white,)
        ],
      ),
    );
  }
}