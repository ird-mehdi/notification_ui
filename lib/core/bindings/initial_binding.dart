import 'package:get/get.dart';
import 'package:notification_ui/features/Notification/presentation/controllers/notification_controller.dart';
import '../../features/Notification/data/datasources/local/notification_data_source_imp.dart';
import '../../features/Notification/data/repositories/notification_repository_imp.dart';
import '../../features/Notification/domain/usecases/get_notification.dart';

class InitialBinding {
  void dependencies() {
    final dataSource = NotificationDataSourceImp();
    final repository = NotificationRepositoryImp(dataSource);
    final getNotificationUseCase = GetNotificationUseCase(repository);

    Get.put(NotificationController(getNotificationUseCase));
  }
}
