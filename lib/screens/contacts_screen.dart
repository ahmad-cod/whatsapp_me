import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants.dart';
import 'package:whatsapp_clone/data/contacts_db.dart';
import 'package:whatsapp_clone/models/contact.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';

class ContactsView extends StatefulWidget {
  const ContactsView({super.key});

  @override
  State<ContactsView> createState() => _ContactsViewState();
}

class _ContactsViewState extends State<ContactsView> {
  bool _isSearch = false;
  String _searchInput = '';

  void _toggleSearch() {
    setState(() {
      _isSearch = !_isSearch;
      _searchInput = ''; // Clear search input when exiting search mode
    });
  }

  List<Contact> filterContactList(
    List<Contact> contactList, String searchInput) {
  return contactList.where((contact) {
    return contact.name.toLowerCase().contains(searchInput.toLowerCase());
  }).toList();
}


  List<Contact> _getFilteredContacts() {
    if (_searchInput.isEmpty) {
      return contactList;
    } else {
      return filterContactList(contactList, _searchInput.toLowerCase());
    }
  }

  @override
  Widget build(BuildContext context) {
    final filteredContacts = _getFilteredContacts();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: accentColor,
        foregroundColor: Colors.white,
        title: _isSearch
            ? _buildSearchField(context)
            : _buildNormalAppBarTitle(filteredContacts.length),
        actions: [
          IconButton(
            icon: Icon(_isSearch ? Icons.close : Icons.search),
            onPressed: _toggleSearch,
          ),
          const SizedBox(width: 10),
          IconButton(
            icon: const Icon(Icons.more_vert_sharp),
            onPressed: () {}, // Handle overflow menu actions
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: filteredContacts.length,
          itemBuilder: (context, index) {
            final contact = filteredContacts[index];
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatView(chatUser: contact),
                ),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'lib/images/${contact.profilePic}',
                  ),
                  radius: 25,
                ),
                title: Text(
                  contact.name,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  contact.about ?? '',
                  style: const TextStyle(fontSize: 12),
                ),
              ),
            );
          }),
    );
  }

  Widget _buildSearchField(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: TextField(
            onChanged: (value) => setState(() => _searchInput = value),
            style: const TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            autofocus: true,
          ),
        ),
      ],
    );
  }

  Widget _buildNormalAppBarTitle(int contactCount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Select Contacts",
            ),
            Text(
              "$contactCount contacts",
              style: const TextStyle(fontSize: 12,),
            ),
          ],
        ),
      ],
    );
  }
}
