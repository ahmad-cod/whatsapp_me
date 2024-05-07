class Contact {
  // properties: name, about, profilePic
  final String name;
  final String? about;
  final String profilePic;
  final List? messages;

  const Contact({ required this.name, this.about, required this.profilePic, this.messages});
}