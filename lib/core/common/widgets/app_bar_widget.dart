import 'package:flutter/material.dart';
import 'package:notification_ui/core/constant/app_colors.dart';
import 'package:notification_ui/core/theme/notification_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showLeadingIcon;
  final VoidCallback? onLeadingPressed;
  final List<Widget>? actions;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showLeadingIcon = false,
    this.onLeadingPressed,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
      titleSpacing: 16,
      title: Text(
        title,
        style: TextStyle(
          fontSize: eighteenPx,
          fontWeight: FontWeight.w500,
          color: AppColors.titleText,
        ),
      ),
      leading: showLeadingIcon
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: onLeadingPressed ?? () => Navigator.of(context).pop(),
            )
          : null,
      actions: actions ?? [],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
