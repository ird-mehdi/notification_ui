import 'package:notification_ui/domain/entities/notification_entities.dart';

abstract class NotificationRepository {
  Future<List<NotificationEntities>> getNotifications();
}
