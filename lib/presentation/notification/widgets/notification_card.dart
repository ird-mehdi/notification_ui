import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notification_ui/core/constants/app_colors.dart';
import 'package:notification_ui/core/constants/app_images.dart';
import 'package:notification_ui/core/theme/notification_screen.dart';
import 'package:notification_ui/core/constants/ui_const.dart';
import 'package:notification_ui/domain/entities/notification_entities.dart';
import 'package:notification_ui/presentation/notification/presenter/notification_controller.dart';

class NotificationCard extends StatelessWidget {
  final NotificationEntities notification;
  final NotificationController controller;

  const NotificationCard({
    super.key,
    required this.notification,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: paddingH8,
      padding: EdgeInsets.symmetric(
        horizontal: twelvePx,
        vertical: sixteenPx,
      ),
      decoration: BoxDecoration(
        color: controller.getNotificationCardColor(notification),
        borderRadius: radius12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildIcon(notification.icon),
              gapW24,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notification.title,
                      style: _textStyle(
                        fontSize: twelvePx,
                        fontWeight: FontWeight.w500,
                        color: AppColors.titleText,
                      ),
                    ),
                    gapH7,
                    Text(
                      notification.message,
                      style: _textStyle(
                        fontSize: elevenPx,
                        color: AppColors.messageText,
                        height: 1.8,
                      ),
                      maxLines: twoPx.toInt(),
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (notification.hasAction &&
                        notification.actionText != null) ...[
                      gapH16,
                      _buildActionButton(),
                    ],
                    gapH16,
                    _buildTimeRow(notification.timeAgo),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(String iconPath) {
    return Container(
      width: fortyFourPx,
      height: fortyFourPx,
      decoration: BoxDecoration(
        color: controller.getNotificationIconBackgroundColor(notification),
        borderRadius: radius37,
      ),
      child: Center(
        child: SvgPicture.asset(
          iconPath,
          width: twentyFourPx,
          height: twentyFourPx,
        ),
      ),
    );
  }

  Widget _buildActionButton() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.actionBackground,
        borderRadius: radius37,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            // Add your action logic here
          },
          borderRadius: radius37,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: twelvePx,
              vertical: eightPx,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  notification.actionText!,
                  style: _textStyle(
                    fontSize: twelvePx,
                    color: AppColors.iconColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                gapW12,
                SvgPicture.asset(
                  AppImages.icArrowRight,
                  width: eighteenPx,
                  height: eighteenPx,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTimeRow(String timeAgo) {
    return Row(
      children: [
        SvgPicture.asset(
          AppImages.icTimer,
          width: fourteenPx,
          height: fourteenPx,
          colorFilter: ColorFilter.mode(
            AppColors.timeIcon,
            BlendMode.srcIn,
          ),
        ),
        gapW8,
        Text(
          timeAgo,
          style: _textStyle(
            fontSize: elevenPx,
            fontWeight: FontWeight.w400,
            color: AppColors.timeText,
          ),
        ),
      ],
    );
  }

  TextStyle _textStyle({
    required double fontSize,
    Color? color,
    FontWeight? fontWeight,
    double? height,
  }) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      height: height,
    );
  }
}
