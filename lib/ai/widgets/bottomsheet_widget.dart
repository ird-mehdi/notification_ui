import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({super.key});

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  int _selectedOption = 0;
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.4, // Start with half the height
      minChildSize: 0.2, // Minimum height
      maxChildSize: 0.5, // Maximum height (70% of screen)
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min, // Make the column fit the content
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "সংকলনগুলো সাজান",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 16),
                _buildRadioOption(
                  context,
                  0,
                  "এ টু জেড",
                  _selectedOption == 0,
                ),
                _buildRadioOption(
                  context,
                  1,
                  "যে তারিখে বানানো হয়েছে",
                  _selectedOption == 1,
                ),
                _buildRadioOption(
                  context,
                  2,
                  "সর্বশেষ পরিবর্তিত",
                  _selectedOption == 2,
                ),
                SizedBox(height: 24),
                Divider(
                  color: Colors.grey[300],
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      // Handle the selected option here if needed
                      // ignore: avoid_print
                      print('Selected Option: $_selectedOption');
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                    ),
                    child: Text(
                      "ওকে",
                      style: TextStyle(
                        color: Color(0xFF118C6F),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildRadioOption(
      BuildContext context, int value, String text, bool isSelected) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedOption = value;
        });
      },
      child: Row(
        children: [
          Radio(
            value: value,
            groupValue: _selectedOption,
            onChanged: (int? newValue) {
              setState(() {
                _selectedOption = newValue!;
              });
            },
            activeColor: Theme.of(context).primaryColor,
            fillColor: WidgetStateColor.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return Color(0xFF118C6F);
              }
              return Colors.grey;
            }),
          ),
          SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
