import 'package:whatsapp_clone/models/chat_user.dart';

List<Chat> chats = [
  Chat(
    name: 'Aroyehun A',
    profilePic: 'ahmadDp.png',
    lastMessage: 'You just won \$50 from the flutter challenge',
    messages: [
      'Hello Akhee!',
      'You just won \$50 from the flutter challenge'
    ],
    time: 'today',
  ),
  Chat(
    name: 'Jalasem',
    profilePic: 'jalasemdp.jpeg',
    lastMessage: 'Congratulations brother!',
    messages: [
      'Congratulations brother!'
    ],
    time: 'today',
  ),
  Chat(
    name: 'Maafy',
    profilePic: 'maafy.jpeg',
    lastMessage: 'Assalamu alaykum Ustadh',
    messages: [
      'Assalamu alaykum Ustadh',
      'How is Abuja'
    ],
    time: 'yesterday',
  ),
  Chat(
    name: 'Rentlify Team',
    profilePic: 'rentlify.jpeg',
    lastMessage: 'We are launching fully next month team.',
    messages: [
      'Hi Great Rentlify Team',
      'We are launching next month team',
    ],
    time: 'May 2',
  ),
  Chat(
    name: 'الشيخ عبدالسلام',
    profilePic: 'palestine.jpeg',
    lastMessage: 'حياكم الله شيخنا',
    messages: [
      'حياكم الله شيخنا'
    ],
    time: 'May 1',
  ),
  Chat(
      name: 'Abdurrahman Ade',
      profilePic: 'dekunle.jpeg',
      lastMessage: 'I couldn\'t get the umrah visa!',
      messages: [
        'I couldn\'t get the umrah visa!',
      ],
      time: 'May 1'),
];

class Chat extends ChatUser {
  Chat({
    required super.name,
    required super.profilePic,
    required super.messages,
    required this.lastMessage,
    required this.time,
  });

  final String lastMessage;
  final String time;

  // methods

  List<Chat> getChatList() {
    return chats;
  }
}
