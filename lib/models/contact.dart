class Contact {
  // properties: name, about, imagePath
  final String name;
  final String? about;
  final String imagePath;
  final List? messages;

  const Contact({ required this.name, this.about, required this.imagePath, this.messages});
}