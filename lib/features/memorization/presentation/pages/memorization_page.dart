import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:notification_ui/core/common/widgets/app_bar_widget.dart';

import 'package:notification_ui/core/constant/app_images.dart';
import 'package:notification_ui/core/constant/ui_const.dart';
import 'package:notification_ui/core/theme/Notification_screen.dart';
import 'package:notification_ui/features/memorization/presentation/controller/memorization_controller.dart';
import 'package:notification_ui/features/memorization/presentation/widgets/memorization_card.dart';

class MemorizationPage extends StatelessWidget {
  final MemorizationController controller = Get.put(MemorizationController());
  MemorizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: paddingTop12,
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            final data = controller.memorizationData[index];
            return MemorizationCard(
              data: data,
            );
          },
        ),
      ),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  /// Builds the AppBar with gradient background and actions.
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: 'Memorization',
      showLeadingIcon: true,
      onLeadingPressed: () {},
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              _buildIconButton(AppImages.icShort, () {}),
              _buildIconButton(AppImages.icLogout, () => Get.back()),
            ],
          ),
        ),
      ],
    );
  }

  /// Builds a single IconButton for the AppBar actions.
  Widget _buildIconButton(String assetPath, VoidCallback onPressed) {
    return IconButton(
      icon: SvgPicture.asset(
        assetPath,
        height: twentyFourPx,
        width: twentyFourPx,
      ),
      onPressed: onPressed,
    );
  }

  /// Builds the floating action button.
  Widget _buildFloatingActionButton() {
    return SizedBox(
      width: 56,
      height: 56,
      child: FloatingActionButton(
        onPressed: () {
          // Add action logic
        },
        child: SvgPicture.asset(AppImages.icNoteAdd),
      ),
    );
  }
}
