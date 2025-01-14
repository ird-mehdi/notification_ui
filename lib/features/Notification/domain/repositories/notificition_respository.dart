import 'package:notification_ui/features/Notification/domain/entities/notification_entities.dart';

abstract class NotificationRepository {
  Future<List<NotificationEntities>> getNotifications();
}
