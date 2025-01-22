import 'package:flutter/material.dart';

class FontSettingsScreen extends StatefulWidget {
  const FontSettingsScreen({super.key});

  @override
  State<FontSettingsScreen> createState() => _FontSettingsScreenState();
}

class _FontSettingsScreenState extends State<FontSettingsScreen> {
  double _arabicFontSize = 24.0;
  double _bengeliFontSize = 25.0;
  String _selectedArabicFont = "কিস্ক ফাহাদ (নিয়ারিয়াস কুরআন) ফন্ট";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 16,
        children: [
          _buildHeader(),
          _buildArabicFontSizeSection(),
          _buildBengeliFontSizeSection(),
          _buildArabicFontSelection(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Color(0xFFE6F3F0),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            Icons.text_fields,
            color: Color(0xFF008060),
            size: 24,
          ),
        ),
        const SizedBox(width: 12),
        Text(
          'ফন্ট সেটিংস',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildArabicFontSizeSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'আরবি ফন্টের আকার',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF535353),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: const Color(0xFF008060),
                  inactiveTrackColor: const Color(0xFFE0E0E0),
                  thumbColor: const Color(0xFF008060),
                  trackHeight: 4.0,
                  thumbShape:
                      const RoundSliderThumbShape(enabledThumbRadius: 8.0),
                  overlayColor: const Color(0xFF008060).withAlpha(51),
                ),
                child: Slider(
                  value: _arabicFontSize,
                  min: 16,
                  max: 32,
                  inactiveColor: Color(0xFFD2EDE4),
                  activeColor: Color(0xFF209F81),
                  onChanged: (value) {
                    setState(() {
                      _arabicFontSize = value;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              '${_arabicFontSize.round()}',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF008060),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBengeliFontSizeSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'বাংলা ফন্টের আকার',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF535353),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: const Color(0xFF008060),
                  inactiveTrackColor: const Color(0xFFE0E0E0),
                  thumbColor: const Color(0xFF008060),
                  trackHeight: 4.0,
                  thumbShape:
                      const RoundSliderThumbShape(enabledThumbRadius: 8.0),
                  overlayColor: const Color(0xFF008060).withAlpha(51),
                ),
                child: Slider(
                  value: _bengeliFontSize,
                  min: 16,
                  max: 32,
                  inactiveColor: Color(0xFFD2EDE4),
                  activeColor: Color(0xFF209F81),
                  onChanged: (value) {
                    setState(() {
                      _bengeliFontSize = value;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              '${_bengeliFontSize.round()}',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF008060),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildArabicFontSelection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'আরবি ফন্ট',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF535353),
          ),
        ),
        const SizedBox(height: 12),
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFF7F7F7),
            borderRadius: BorderRadius.circular(8),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _selectedArabicFont,
              isExpanded: true,
              icon: Icon(Icons.keyboard_arrow_down, color: Color(0xFF535353)),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              items: [
                DropdownMenuItem(
                  value: "কিস্ক ফাহাদ (নিয়ারিয়াস কুরআন) ফন্ট",
                  child: Text(
                    "কিস্ক ফাহাদ (নিয়ারিয়াস কুরআন) ফন্ট",
                    style: TextStyle(
                      color: Color(0xFF535353),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedArabicFont = value!;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
