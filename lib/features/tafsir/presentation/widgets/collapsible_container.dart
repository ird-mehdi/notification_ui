import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:notification_ui/core/constant/app_colors.dart';
import 'package:notification_ui/core/constant/app_images.dart';
import 'package:notification_ui/core/constant/ui_const.dart';
import 'package:notification_ui/core/theme/notification_screen.dart';

class CollapsibleContainer extends StatelessWidget {
  final String icon;
  final String title;
  final String? arabicText;
  final String translation;
  final Color? textColor;
  final Color? iconColor;

  const CollapsibleContainer({
    super.key,
    required this.icon,
    required this.title,
    this.arabicText,
    required this.translation,
    this.textColor = Colors.black,
    this.iconColor = AppColors.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: EdgeInsets.symmetric(horizontal: sixteenPx, vertical: 12),
      collapsedBackgroundColor: AppColors.backgroundColor,
      backgroundColor: AppColors.backgroundColor,
      collapsedTextColor: AppColors.iconColor,
      title: Text(
        title,
        style: TextStyle(
          fontSize: fourteenPx,
          fontWeight: FontWeight.w500,
          color: AppColors.iconColor,
        ),
      ),
      leading: SvgPicture.asset(
        icon,
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
          child: arabicText != null
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        arabicText!,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    gapH10,
                    Text(
                      "Sahih International",
                      style: TextStyle(
                        fontSize: tenPx,
                        fontWeight: FontWeight.w500,
                        color: Colors.brown,
                      ),
                    ),
                    gapH10,
                    Text(
                      translation,
                      style: TextStyle(
                        fontSize: thirteenPx,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                )
              : Text(
                  translation,
                  style: TextStyle(
                    fontSize: thirteenPx,
                    color: Colors.black87,
                  ),
                ),
        ),
      ],
    );
  }
}
