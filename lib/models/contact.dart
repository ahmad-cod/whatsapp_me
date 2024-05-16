import 'package:whatsapp_clone/models/chat_user.dart';

class Contact extends ChatUser {
  final String? about;

  Contact({
    required super.name,
    required super.profilePic,
    required super.messages,
    this.about,
  });
}