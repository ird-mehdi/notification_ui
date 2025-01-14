class NotificationEntities {
  final String title;
  final String message;
  final String timeAgo;
  final String icon;
  final bool hasAction;
  final String? actionText;
  final bool isRead;

  const NotificationEntities({
    required this.title,
    required this.message,
    required this.timeAgo,
    required this.icon,
    this.hasAction = false,
    this.actionText,
    this.isRead = false,
  });
}
