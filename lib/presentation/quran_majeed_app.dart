import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:notification_ui/ai/pages/collection_page.dart';
import 'package:notification_ui/core/theme/app_theme.dart';
import 'package:notification_ui/core/theme/Notification_screen.dart';

class QuranMajeedApp extends StatefulWidget {
  const QuranMajeedApp({super.key});

  static final GlobalKey _globalkey = GlobalKey();
  static BuildContext? get globalContext =>
      Get.context ?? _globalkey.currentContext;

  @override
  State<QuranMajeedApp> createState() => _QuranMajeedState();
}

class _QuranMajeedState extends State<QuranMajeedApp> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color(0xFF118C6E), // Make the status bar transparent
        //statusBarIconBrightness: Brightness.dark, // Light icons
        //statusBarBrightness: Brightness.light, // For iOS devices
      ),
      child: GetMaterialApp(
        key: QuranMajeedApp._globalkey,
        onInit: () => NotificationScreen.setUp(context),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.light,
        home: CollectionScreen(),
      ),
    );
  }
}
