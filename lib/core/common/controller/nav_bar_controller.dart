import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notification_ui/features/memorization/presentation/pages/memorization_page.dart';

class NavBarController extends GetxController {
  // Observable selected index
  var selectedIndex = 2.obs;

  // List of widget pages corresponding to each bottom navigation item
  final List<Widget> pages = [
    MemorizationPage(),
    MemorizationPage(),
    MemorizationPage(),
    MemorizationPage(),
  ];

  // Update selected index
  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
