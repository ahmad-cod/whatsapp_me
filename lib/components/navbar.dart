import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants.dart';

class Navbar extends StatefulWidget {
  final int selectedIndex;
  final Function navigateNavbar;
  const Navbar({super.key, required this.selectedIndex, required this.navigateNavbar});
  
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  // int _selectedIndex = 0;

  final List<BottomNavigationBarItem> _navbarItems = const [
    BottomNavigationBarItem( icon: Icon(Icons.chat), label: 'Chats' ),
    BottomNavigationBarItem( icon: Icon(Icons.groups_2_outlined), label: 'Community' ),
    BottomNavigationBarItem( icon: Icon(Icons.update), label: 'Updates' ),
    BottomNavigationBarItem( icon: Icon(Icons.call), label: 'Calls' ),
  ];

  void changeIndex(int index) {
    setState(() {
      // _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey[400],
      backgroundColor: accentColor,
      currentIndex: widget.selectedIndex,
      onTap: (index) => widget.navigateNavbar(index),
      items: _navbarItems
    );
  }
}