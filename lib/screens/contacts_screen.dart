import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/contacts_db.dart';
import 'package:whatsapp_clone/models/chat.dart';
import 'package:whatsapp_clone/models/contact.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';

class ContactsView extends StatefulWidget {
  const ContactsView({super.key});

  @override
  State<ContactsView> createState() => _ContactsViewState();
}

class _ContactsViewState extends State<ContactsView> {
  // variables: isSearch
  bool isSearch = false;

  // methods
  void toggleSearch() {
    setState(() {
      isSearch = !isSearch;
    });
  }

  // method for filtering contactList based on searchInput
  List<Contact> filterContactList(
      List<Contact> contactList, String searchInput) {
    return contactList.where((contact) {
      return contact.name.toLowerCase().contains(searchInput.toLowerCase());
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: isSearch
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: TextField(
                        // controller: Controller.text("data"),
                        style: const TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                        autofocus: true,
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Row(
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Select Contacts"),
                                Text(
                                  "${contactList.length} contacts",
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ]),
                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                              onTap: toggleSearch,
                              child: const Icon(Icons.search)),
                          const SizedBox(width: 10),
                          const Icon(Icons.more_vert_sharp),
                        ],
                      )
                    ]),
        ),
        body: ListView.builder(
            itemCount: contactList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ChatView(chatUser: contactList[index])));
                },
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                        'lib/images/${contactList[index].profilePic}'),
                    radius: 25,
                  ),
                  title: Text(
                    contactList[index].name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    "${contactList[index].about}",
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              );
            }));
  }
}
