import 'package:flutter/material.dart';

class NotificationSettingWidget extends StatefulWidget {
  const NotificationSettingWidget({super.key});

  @override
  State<NotificationSettingWidget> createState() =>
      NotificationSettingWidgetState();
}

class NotificationSettingWidgetState extends State<NotificationSettingWidget> {
  bool _dailyNotificationEnabled = true;
  String _selectedTime = "সকাল-বিকেল ০২:০০";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.notifications,
                    color: Color(0xFF01A479),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "নোটিফিকেশন সেটিংস",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  "দৈনিক নোটিফিকেশন হালনাগাদ",
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Switch(
                  value: _dailyNotificationEnabled,
                  onChanged: (newValue) {
                    setState(() {
                      _dailyNotificationEnabled = newValue;
                    });
                  },
                  activeColor: Color(0xFF01A479),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  "নোটিফিকেশনের সময়",
                  style: TextStyle(color: Colors.black),
                ),
                trailing: DropdownButton<String>(
                  value: _selectedTime,
                  items: <String>[
                    'সকাল-বিকেল ০২:০০',
                    'সকাল-বিকেল ০৩:০০',
                    'সকাল-বিকেল ০৪:০০',
                    'সকাল-বিকেল ০৫:০০',
                    'সকাল-বিকেল ০৬:০০',
                    'সকাল-বিকেল ০৭:০০',
                    'সকাল-বিকেল ০৮:০০',
                    'সকাল-বিকেল ০৯:০০',
                    'সকাল-বিকেল ১০:০০',
                    'সকাল-বিকেল ১১:০০',
                    'সকাল-বিকেল ১২:০০',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedTime = newValue!;
                    });
                  },
                  underline: SizedBox(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
