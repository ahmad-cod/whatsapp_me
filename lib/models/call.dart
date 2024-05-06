class Call {
  // name, time, type, dp / imagePath, 
  const Call({
    required this.name,
    required this.type,
    required this.time,
    required this.imagePath,
  });

  final String name;
  final String type;
  final String time;
  final String imagePath;
}