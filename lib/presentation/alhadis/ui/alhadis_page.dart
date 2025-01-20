import 'package:flutter/material.dart';
import 'package:notification_ui/presentation/alhadis/widgets/hexagon_icon.dart';

class AlhadisPage extends StatelessWidget {
  final List<Map<String, dynamic>> chapters = [
    {"id": 1, "name": "ওহীর সূচনা অধ্যায়", "range": "১ - ৭"},
    {"id": 2, "name": "ঈমান", "range": "৮ - ৫৮"},
    {"id": 3, "name": "ইলম", "range": "৫৯ - ১৩৪"},
    {"id": 4, "name": "ওজু", "range": "১৩৫ - ২৪৭"},
    {"id": 5, "name": "গোসল", "range": "২৪৮ - ২৯৩"},
    {"id": 6, "name": "হায়েজ", "range": "২৯৪ - ৩৩৩"},
    {"id": 7, "name": "তায়াম্মুম", "range": "৩৩৪ - ৩৪৮"},
    {"id": 8, "name": "সালাত", "range": "৩৪৯ - ৫২০"},
    {"id": 9, "name": "সালাতের ওয়াক্তসমূহ", "range": "৫২১ - ৬০২"},
  ];

  AlhadisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF118C6F),
      appBar: AppBar(
        backgroundColor: const Color(0xFF118C6F),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'সহিহ বুখারি',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '৭৫৬৩ টি হাদিস',
              style: TextStyle(
                color: Colors.white.withAlpha(204),
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF4F4F4),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(14),
            topRight: Radius.circular(14),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'অধ্যায় সার্চ করুন',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: const Icon(Icons.search, color: Colors.grey),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 16,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: chapters.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Card(
                      color: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () {
                          // Handle chapter selection
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              HexagonIcon(
                                  number: chapters[index]["id"].toString()),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      chapters[index]["name"],
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      'হাদিসের রেঞ্জ: ${chapters[index]["range"]}',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
