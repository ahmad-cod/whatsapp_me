import 'package:flutter/material.dart';

class MyTitleBar extends StatelessWidget {
  final String title;
  final IconData icon;

  const MyTitleBar({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Icon(
                icon,
                color: Colors.white,
              )
            ],
          );
  }
}