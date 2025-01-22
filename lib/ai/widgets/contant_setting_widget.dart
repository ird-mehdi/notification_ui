import 'package:flutter/material.dart';

class ContantSettingWidget extends StatefulWidget {
  const ContantSettingWidget({super.key});

  @override
  State<ContantSettingWidget> createState() => _ContantSettingWidgetState();
}

class _ContantSettingWidgetState extends State<ContantSettingWidget> {
  bool showChapter = false;
  bool showArabic = true;
  bool showHover = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: Card(
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.document_scanner_outlined,
                    color: const Color(0xFF118C6F),
                    size: 24,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'কনটেন্ট সেটিংস',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            _buildSwitchTile(
              title: 'চাপ্টার দেখান',
              value: showChapter,
              onChanged: (value) {
                setState(() => showChapter = value);
              },
            ),
            _buildSwitchTile(
              title: 'আরবি দেখান',
              value: showArabic,
              onChanged: (value) {
                setState(() => showArabic = value);
              },
            ),
            _buildSwitchTile(
              title: 'হবর-ঘের',
              value: showHover,
              onChanged: (value) {
                setState(() => showHover = value);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchTile({
    required String title,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: const Color(0xFFD2EDE4),
          ),
        ],
      ),
    );
  }
}
