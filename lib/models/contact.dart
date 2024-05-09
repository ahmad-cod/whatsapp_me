import 'package:whatsapp_clone/models/chat_user.dart';

class Contact extends ChatUser {
  final String? about;
  final List? messages;

  const Contact({
    required super.name,
    required super.profilePic,
    this.about,
    this.messages
  });
}