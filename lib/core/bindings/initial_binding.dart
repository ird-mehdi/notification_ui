import 'package:get/get.dart';
import 'package:notification_ui/data/datasources/local/notification_data_source_imp.dart';
import 'package:notification_ui/data/repositories/notification_repository_imp.dart';
import 'package:notification_ui/presentation/main/presenter/nav_bar_controller.dart';
import 'package:notification_ui/presentation/notification/presenter/notification_controller.dart';
import 'package:notification_ui/presentation/memorization/presenter/memorization_controller.dart';
import '../../domain/usecases/get_notification.dart';

class InitialBinding {
  void dependencies() {
    final dataSource = NotificationDataSourceImp();
    final repository = NotificationRepositoryImp(dataSource);
    final getNotificationUseCase = GetNotificationUseCase(repository);

    Get.put(NotificationController(getNotificationUseCase));
    Get.put(MemorizationController());
    Get.put(NavBarController());
  }
}
