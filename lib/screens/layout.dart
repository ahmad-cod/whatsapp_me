import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/my_appbar.dart';
import 'package:whatsapp_clone/components/navbar.dart';
import 'package:whatsapp_clone/screens/calls_screen.dart';
import 'package:whatsapp_clone/screens/community_screen.dart';
import 'package:whatsapp_clone/screens/chats_screen.dart';
import 'package:whatsapp_clone/screens/updates_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  // appbar title list
  final List<String> _titles = [
    'WhatsApp',
    'Community',
    'Updates',
    'Calls',
  ];

  // screens list
  final List _screens = const [
    // chat screen
    ChatsScreen(),

    // community screen
    CommunityScreen(),

    // updates screen
    UpdatesScreen(),

    // calls screen
    CallsScreen(),
  ];

  // methods
  void navigateNavbar (int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: MyAppBar(title: _titles[selectedIndex]),
      body: _screens[selectedIndex],

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Chat',
        child: const Icon(Icons.add_comment_outlined),
      ),
      bottomNavigationBar: Navbar(
        selectedIndex: selectedIndex,
        navigateNavbar: navigateNavbar,
      ),
    );
  }
}