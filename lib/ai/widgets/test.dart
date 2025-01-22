import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  bool showChapter = false;
  bool showArabic = true;
  bool showHover = true;
  bool _dailyNotificationEnabled = true;
  String _selectedTime = "সকাল-বিকেল ০২:০০";
  bool screenOn = false;
  bool nightMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF118C6F),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'সেটিংস',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
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
            ),
            Container(
              margin:
                  const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
              child: Card(
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
            ),
          ],
        ),
      ),
    );
  }
}
