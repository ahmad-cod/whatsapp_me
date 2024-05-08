import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/my_appbar.dart';
import 'package:whatsapp_clone/components/navbar.dart';
import 'package:whatsapp_clone/models/custom_icon.dart';
import 'package:whatsapp_clone/screens/calls_screen.dart';
import 'package:whatsapp_clone/screens/community_screen.dart';
import 'package:whatsapp_clone/screens/chats_screen.dart';
import 'package:whatsapp_clone/screens/contacts_screen.dart';
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
    'Communities',
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

  // floating bar icons list for each screen
  final List<CustomIcon> _icons = const [
    CustomIcon(
        icon: Icon(Icons.chat_outlined),
        toScreen: ContactsView(),
        tooltip: 'Chat'),
    CustomIcon(
        icon: Icon(Icons.group_add_outlined),
        toScreen: ContactsView(),
        tooltip: 'Chat'),
    CustomIcon(
        icon: Icon(Icons.camera_alt_outlined),
        toScreen: ContactsView(),
        tooltip: 'Upload Status'),
    CustomIcon(
        icon: Icon(Icons.add_call), toScreen: ContactsView(), tooltip: 'Call'),
  ];

  // methods
  void navigateNavbar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: MyAppBar(title: _titles[selectedIndex]),

      body: _screens[selectedIndex],

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => _icons[selectedIndex].toScreen));
        },
        tooltip: _icons[selectedIndex].tooltip,
        child: _icons[selectedIndex].icon,
      ),

      bottomNavigationBar: Navbar(
        selectedIndex: selectedIndex,
        navigateNavbar: navigateNavbar,
      ),
    );
  }
}
