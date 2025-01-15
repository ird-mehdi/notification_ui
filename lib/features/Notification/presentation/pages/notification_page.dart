import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:notification_ui/core/constant/app_colors.dart';
import 'package:notification_ui/core/constant/app_images.dart';
import 'package:notification_ui/core/constant/ui_const.dart';
import 'package:notification_ui/features/Notification/presentation/controllers/notification_controller.dart';
import 'package:notification_ui/features/Notification/presentation/widgets/notification_card.dart';

import '../../../../core/constant/app_dimensions.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({super.key});
  final NotificationController controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.gradientStartColor,
                AppColors.gradientEndColor,
              ],
            ),
          ),
        ),
        leading: IconButton(
          icon: SvgPicture.asset(
            AppImages.icArrowLeft,
            height: AppDimensions.iconSize,
            width: AppDimensions.iconSize,
          ),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          'Notification',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: AppColors.titleText,
          ),
        ),
      ),
      body: Padding(
        padding: paddingTop12,
        child: Obx(() {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }

          if (controller.notifications.isEmpty) {
            return const Center(child: Text('No notifications available.'));
          }

          return ListView.builder(
            itemCount: controller.notifications.length,
            itemBuilder: (context, index) {
              final notification = controller.notifications[index];
              return NotificationCard(
                notification: notification,
                controller: controller,
              );
            },
          );
        }),
      ),
    );
  }
}
