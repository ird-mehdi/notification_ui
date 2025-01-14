import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notification_ui/core/constant/app_colors.dart';
import '../../domain/entities/notification_entities.dart';
import '../../domain/usecases/get_notification.dart';

class NotificationController extends GetxController {
  final GetNotificationUseCase _getNotificationUseCase;

  NotificationController(this._getNotificationUseCase);

  final RxList<NotificationEntities> notifications =
      <NotificationEntities>[].obs;
  final RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadNotifications();
  }

  void loadNotifications() async {
    isLoading.value = true;
    final List<NotificationEntities> fetchedNotifications =
        await _getNotificationUseCase();
    notifications.value = fetchedNotifications;
    isLoading.value = false;
  }

  Color getNotificationCardColor(NotificationEntities notification) {
    return notification.isRead
        ? AppColors.backgroundRead
        : AppColors.backgroundUnread;
  }

  Color getNotificationIconBackgroundColor(NotificationEntities notification) {
    return notification.isRead
        ? AppColors.iconBackgroundUnread
        : AppColors.iconBackground;
  }
}
