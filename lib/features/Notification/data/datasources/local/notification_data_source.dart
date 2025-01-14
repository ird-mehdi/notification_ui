import '../../../domain/entities/notification_entities.dart';

abstract class NotificationDataSource {
  Future<List<NotificationEntities>> getNotifications();
}

