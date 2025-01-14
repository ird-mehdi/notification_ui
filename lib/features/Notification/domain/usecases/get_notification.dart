import '../entities/notification_entities.dart';
import '../repositories/notificition_respository.dart';

class GetNotificationUseCase {
  final NotificationRepository repository;

  GetNotificationUseCase(this.repository);

  Future<List<NotificationEntities>> call() {
    return repository.getNotifications();
  }
}
