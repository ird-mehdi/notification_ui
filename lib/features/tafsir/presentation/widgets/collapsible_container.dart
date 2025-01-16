import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:notification_ui/core/constant/app_colors.dart';
import 'package:notification_ui/core/constant/app_images.dart';
import 'package:notification_ui/core/constant/ui_const.dart';
import 'package:notification_ui/core/theme/notification_screen.dart';
import 'package:notification_ui/features/tafsir/presentation/controller/tafsir_controller.dart';

class CollapsibleContainer extends StatelessWidget {
  final String title;
  final String arabicText;
  final String translation;
  final TafsirController controller;

  const CollapsibleContainer({
    super.key,
    required this.title,
    required this.arabicText,
    required this.translation,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: EdgeInsets.zero,
      collapsedBackgroundColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      collapsedTextColor: Colors.transparent,
      onExpansionChanged: (expanded) {
        controller.toggleExpansion(expanded);
      },
      title: Text(
        title,
        style: TextStyle(
          fontSize: fourteenPx,
          fontWeight: FontWeight.w500,
          color: AppColors.iconColor,
        ),
      ),
      leading: SvgPicture.asset(
        AppImages.icStar,
        height: twentyFourPx,
        width: twentyFourPx,
        colorFilter: ColorFilter.mode(
          AppColors.iconColor,
          BlendMode.srcIn,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            AppImages.icMore,
            height: eighteenPx,
            width: eighteenPx,
          ),
          gapW20,
          SvgPicture.asset(
            AppImages.icMoreoption,
            height: eighteenPx,
            width: eighteenPx,
          ),
        ],
      ),
      collapsedShape: RoundedRectangleBorder(),
      shape: RoundedRectangleBorder(),
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                arabicText,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 16),
              Text(
                "Sahih International",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.brown,
                ),
              ),
              SizedBox(height: 8),
              Text(
                translation,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
