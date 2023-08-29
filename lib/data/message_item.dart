class MessageItem {
  final String senderName;
  final String message;
  final String profilePicture;
  final String lastOnline;
  final int messageCount;

   MessageItem({
    required this.senderName,
    required this.message,
    required this.profilePicture,
    required this.lastOnline,
    required this.messageCount,
  });
}
