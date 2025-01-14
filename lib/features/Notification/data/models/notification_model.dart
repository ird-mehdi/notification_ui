
import '../../domain/entities/notification_entities.dart';

class NotificationModel extends NotificationEntities {
  const NotificationModel({
    required super.title,
    required super.message,
    required super.timeAgo,
    required super.icon,
    super.hasAction,
    super.actionText,
    super.isRead,
  });

  NotificationModel copyWith({
    String? title,
    String? message,
    String? timeAgo,
    String? icon,
    bool? hasAction,
    String? actionText,
    bool? isRead,
  }) {
    return NotificationModel(
      title: title ?? this.title,
      message: message ?? this.message,
      timeAgo: timeAgo ?? this.timeAgo,
      icon: icon ?? this.icon,
      hasAction: hasAction ?? this.hasAction,
      actionText: actionText ?? this.actionText,
      isRead: isRead ?? this.isRead,
    );
  }

  // Convert from JSON
  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      title: json['title'],
      message: json['message'],
      timeAgo: json['timeAgo'],
      icon: json['icon'],
      hasAction: json['hasAction'] ?? false,
      actionText: json['actionText'],
      isRead: json['isRead'] ?? false,
    );
  }

  // Convert to JSON
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'message': message,
      'timeAgo': timeAgo,
      'icon': icon,
      'hasAction': hasAction,
      'actionText': actionText,
      'isRead': isRead,
    };
  }
}

