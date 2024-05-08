enum CallType {
  missed,
  received,
  dialed,
}

class CallLog {
  final String name;
  final String number;
  final String? dpPath;
  final CallType callType;
  final DateTime timestamp;

  const CallLog({
    required this.name,
    required this.number,
    required this.dpPath,
    required this.callType,
    required this.timestamp,
  });
}

List<CallLog> callLogs = [
  CallLog(
    name: "Jalasem",
    number: "+1234567890",
    dpPath: "jalasemdp.jpeg",
    callType: CallType.missed,
    timestamp: DateTime.now().subtract(const Duration(hours: 2)), // 2 hours ago
  ),
  CallLog(
    name: "Maafy",
    number: "+9876543210",
    dpPath: "maafy.jpeg",
    callType: CallType.received,
    timestamp: DateTime.now().subtract(const Duration(days: 1)), // Yesterday
  ),
  CallLog(
    name: "Prince Ade",
    number: "07054547240",
    dpPath: "ahmadDp.png",
    callType: CallType.dialed,
    timestamp: DateTime.now().subtract(const Duration(hours: 1)), // Yesterday
  ),
  CallLog(
    name: "Scholar AR",
    number: "+2456543210",
    dpPath: "dekunle.jpeg",
    callType: CallType.received,
    timestamp: DateTime.now().subtract(const Duration(days: 1)), // Yesterday
  ),
  CallLog(
    name: "", // Empty name for testing number handling
    number: "+0123456789",
    dpPath: "palestine.jpeg",
    callType: CallType.received,
    timestamp: DateTime.now().subtract(const Duration(minutes: 30)), // 30 minutes ago
  ),
];
