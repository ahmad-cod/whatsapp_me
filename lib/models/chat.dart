List<Chat> chats = [
  const Chat(name: 'Aroyehun A', imagePath: 'lib/images/ahmadDp.png', message: 'You just won \$50 from the flutter challenge', isRead: false, time: 'today',),
  const Chat(name: 'Jalasem', imagePath: 'lib/images/jalasemdp.jpeg', message: 'Congratulations brother!', isRead: true, time: 'today',),
  const Chat(name: 'Maafy', imagePath: 'lib/images/maafy.jpeg', message: 'Assalamu alaykum Ustadh', isRead: true, time: 'yesterday',),
  const Chat(name: 'Rentlify Team', imagePath: 'lib/images/rentlify.jpeg', message: 'We are launching fully next month team.', isRead: false, time: 'May 2',),
  const Chat(name: 'الشيخ عبدالسلام', imagePath: 'lib/images/palestine.jpeg', message: 'حياكم الله شيخنا', isRead: false, time: 'May 1',),
  const Chat(name: 'Abdurrahman Ade', imagePath: 'lib/images/dekunle.jpeg', message: 'I couldn\'t get the umrah visa!', isRead: false, time: 'May 1'),
];

class Chat {
  const Chat({
    required this.name,
    required this.imagePath,
    required this.message,
    required this.isRead,
    required this.time,
  });
  // Each chat should have a user name, a tagline for message, a user dp can be imagePath, and time
  // message read or not,

  final String name;
  final String imagePath;
  final String message;
  final bool isRead;
  final String time;

  // methods 

  List<Chat> getChatList() {
    return chats;
  }
}