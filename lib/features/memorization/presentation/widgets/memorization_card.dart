import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:notification_ui/core/constant/app_colors.dart';
import 'package:notification_ui/core/constant/app_images.dart';
import 'package:notification_ui/core/constant/ui_const.dart';
import 'package:notification_ui/core/theme/Notification_screen.dart';
import 'package:notification_ui/features/memorization/presentation/widgets/circula_progress_widget.dart';

class MemorizationCard extends StatelessWidget {
  final Map<String, dynamic> data;

  const MemorizationCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingHV166,
      child: Container(
        width: double.infinity,
        padding: padding15,
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: radius14,
          border: Border.all(
            color: AppColors.memorizationCardColor,
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle(data['title']),
            gapH22,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildDetailsColumn(),
                CircularProgressBar(progress: data['progress']),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: fifteenPx,
            fontWeight: FontWeight.w500,
          ),
        ),
        SvgPicture.asset(AppImages.icMore),
      ],
    );
  }

  Widget _buildDetailsColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildRichText(data['daysLeft'].toString(), ' Days Left', twentyFourPx,
            thirteenPx),
        gapH22,
        _buildIconRow(AppImages.icStar, data['progressText']),
        gapH10,
        _buildIconRow(AppImages.icMenuBook, data['currentSurah']),
        gapH10,
        _buildIconRow(
            data['isVolume'] ? AppImages.icVolume : AppImages.icVolumeOff,
            data['status']),
        gapH10,
        _buildIconRow(AppImages.icSchedule, data['endDate']),
      ],
    );
  }

  Widget _buildRichText(
      String boldText, String normalText, double boldSize, double normalSize) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '$boldText ',
            style: TextStyle(
              fontSize: boldSize,
              fontWeight: FontWeight.w700,
            ),
          ),
          TextSpan(
            text: normalText,
            style: TextStyle(
              fontSize: normalSize,
              color: AppColors.messageText,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconRow(String icon, String text) {
    return Row(
      children: [
        SvgPicture.asset(icon, width: twentyPx, height: twentyPx),
        gapW10,
        Text(
          text,
          style: TextStyle(
            fontSize: twelvePx,
            color: AppColors.messageText,
          ),
        ),
      ],
    );
  }
}
