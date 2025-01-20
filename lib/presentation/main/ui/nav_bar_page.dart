import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:notification_ui/core/constants/app_colors.dart';
import 'package:notification_ui/core/constants/app_images.dart';
import 'package:notification_ui/presentation/main/presenter/nav_bar_controller.dart';

class NavBarPage extends StatelessWidget {
  // Inject controller
  final NavBarController controller = Get.put(NavBarController());

  NavBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: controller.selectedIndex.value,
            children: controller.pages,
          )),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color(0xFFF4EDE3),
              width: 1,
            ),
          ),
        ),
        child: Obx(() => NavigationBar(
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: controller.onItemTapped,
              backgroundColor: AppColors.navigationBarColor,
              height: 80,
              destinations: [
                NavigationDestination(
                  icon: SvgPicture.asset(AppImages.icHome),
                  selectedIcon: SvgPicture.asset(AppImages.icHome),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: SvgPicture.asset(AppImages.icMenuBook),
                  selectedIcon: SvgPicture.asset(AppImages.icMenuBook),
                  label: 'Subjectwise',
                ),
                NavigationDestination(
                  icon: SvgPicture.asset(AppImages.icHifz),
                  selectedIcon: SvgPicture.asset(AppImages.icHifz),
                  label: 'Hifz',
                ),
                NavigationDestination(
                  icon: SvgPicture.asset(AppImages.icCollection),
                  selectedIcon: SvgPicture.asset(AppImages.icCollection),
                  label: 'Collection',
                ),
                NavigationDestination(
                  icon: SvgPicture.asset(AppImages.icSetting),
                  selectedIcon: SvgPicture.asset(AppImages.icSetting),
                  label: 'Settings',
                ),
              ],
            )),
      ),
    );
  }
}
