import 'package:flutter/material.dart';
import 'package:notification_ui/ai/widgets/contant_setting_widget.dart';
import 'package:notification_ui/ai/widgets/font_settings_updated.dart';
import 'package:notification_ui/ai/widgets/notification_setting_widget.dart';
import 'package:notification_ui/ai/widgets/view_setting_widget.dart';

class AlhadithSetting extends StatelessWidget {
  const AlhadithSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF118C6F),
      appBar: _buildAppBar(context),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF4F4F4),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ContantSettingWidget(),
              FontSettingsScreen(),
              NotificationSettingWidget(),
              ViewSettingWidget(),
            ],
          ),
        ),
      ), // Example body
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF118C6F), // BG color
      title: Text(
        "সেটিং",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white, // Text color
        ),
      ),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: Colors.white), // Back icon
        onPressed: () {
          Navigator.pop(context); // Navigate back
        },
      ),
    );
  }
}
