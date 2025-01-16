import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:notification_ui/core/constant/app_colors.dart';
import 'package:notification_ui/core/constant/app_images.dart';
import 'package:notification_ui/core/theme/notification_screen.dart';

class CustomSliverAppBar extends StatelessWidget {
  final String title;
  final bool showLeadingIcon;
  final VoidCallback? onLeadingPressed;
  final double expandedHeight;

  const CustomSliverAppBar({
    super.key,
    required this.title,
    this.showLeadingIcon = false,
    this.onLeadingPressed,
    this.expandedHeight = kToolbarHeight,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: expandedHeight,
      pinned: true,
      floating: false,
      forceMaterialTransparency: false,
      title: Text(
        title,
        style: TextStyle(
          fontSize: eighteenPx,
          fontWeight: FontWeight.w500,
          color: AppColors.titleText,
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
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
      ),
      leading: showLeadingIcon
          ? IconButton(
              icon: SvgPicture.asset(AppImages.icArrowLeft),
              onPressed: onLeadingPressed ?? () => Navigator.of(context).pop(),
            )
          : null,
      actions: [
        IconButton(
            onPressed: () {}, icon: SvgPicture.asset(AppImages.icSetting2))
      ],
    );
  }
}
