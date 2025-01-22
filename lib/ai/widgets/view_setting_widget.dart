import 'package:flutter/material.dart';

class ViewSettingWidget extends StatefulWidget {
  const ViewSettingWidget({super.key});

  @override
  State<ViewSettingWidget> createState() => ViewSettingWidgetState();
}

class ViewSettingWidgetState extends State<ViewSettingWidget> {
  bool screenOn = false;
  bool nightMode = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      child: Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title Row
              Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: const Color(0xFF01A479),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'ভিউ সেটিংস',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Screen On Switch
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'স্ক্রিন অন রাখুন',
                      style: TextStyle(fontSize: 16),
                    ),
                    Switch(
                      value: screenOn,
                      onChanged: (value) {
                        setState(() {
                          screenOn = value;
                        });
                      },
                      activeColor: const Color(0xFF01A479),
                    ),
                  ],
                ),
              ),

              // Night Mode Switch
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'নাইট মোড',
                      style: TextStyle(fontSize: 16),
                    ),
                    Switch(
                      value: nightMode,
                      onChanged: (value) {
                        setState(() {
                          nightMode = value;
                        });
                      },
                      activeColor: const Color(0xFF01A479),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // Bottom Buttons
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF01A479),
                        padding: const EdgeInsets.symmetric(
                          vertical: 12.0,
                          horizontal: 16.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'লিস্ট ভিউ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF5F7FA),
                        padding: const EdgeInsets.symmetric(
                          vertical: 12.0,
                          horizontal: 16.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'গ্রিড ভিউ',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
