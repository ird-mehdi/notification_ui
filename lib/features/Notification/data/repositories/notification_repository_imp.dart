import 'package:notification_ui/features/Notification/data/datasources/local/notification_data_source.dart';
import 'package:notification_ui/features/Notification/domain/entities/notification_entities.dart';
import 'package:notification_ui/features/Notification/domain/repositories/notificition_respository.dart';

class NotificationRepositoryImp implements NotificationRepository {
  final NotificationDataSource dataSource;

  NotificationRepositoryImp(this.dataSource);

  @override
  Future<List<NotificationEntities>> getNotifications() {
    return dataSource.getNotifications();
  }
}
