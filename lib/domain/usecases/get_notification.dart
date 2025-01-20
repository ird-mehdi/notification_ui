import 'package:notification_ui/domain/entities/notification_entities.dart';
import 'package:notification_ui/domain/repositories/notificition_respository.dart';

class GetNotificationUseCase {
  final NotificationRepository repository;

  GetNotificationUseCase(this.repository);

  Future<List<NotificationEntities>> call() {
    return repository.getNotifications();
  }
}
