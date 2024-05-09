import 'package:whatsapp_clone/models/chat_user.dart';

List<Chat> chats = [
  const Chat(
    name: 'Aroyehun A',
    profilePic: 'ahmadDp.png',
    message: 'You just won \$50 from the flutter challenge',
    time: 'today',
  ),
  const Chat(
    name: 'Jalasem',
    profilePic: 'jalasemdp.jpeg',
    message: 'Congratulations brother!',    time: 'today',
  ),
  const Chat(
    name: 'Maafy',
    profilePic: 'maafy.jpeg',
    message: 'Assalamu alaykum Ustadh',    time: 'yesterday',
  ),
  const Chat(
    name: 'Rentlify Team',
    profilePic: 'rentlify.jpeg',
    message: 'We are launching fully next month team.',
    time: 'May 2',
  ),
  const Chat(
    name: 'الشيخ عبدالسلام',
    profilePic: 'palestine.jpeg',
    message: 'حياكم الله شيخنا',
    time: 'May 1',
  ),
  const Chat(
      name: 'Abdurrahman Ade',
      profilePic: 'dekunle.jpeg',
      message: 'I couldn\'t get the umrah visa!',
      time: 'May 1'),
];

class Chat extends ChatUser {
  const Chat({
    required super.name,
    required super.profilePic,
    required this.message,
    required this.time,
  });

  final String message;
  final String time;

  // methods

  List<Chat> getChatList() {
    return chats;
  }
}
