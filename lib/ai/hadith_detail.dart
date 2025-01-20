import 'package:flutter/material.dart';

class HadithDetailScreen extends StatefulWidget {
  const HadithDetailScreen({super.key});

  @override
  State<HadithDetailScreen> createState() => _HadithDetailScreenState();
}

class _HadithDetailScreenState extends State<HadithDetailScreen> {
  final Color _primaryColor = const Color(0xFF118C6F);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                backgroundColor: _primaryColor,
                elevation: 0,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {},
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'আল হাদিস',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'আল হাদিস',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.settings, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF4F4F4),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: List.generate(
                    10,
                    (index) => Column(
                      children: const [
                        ChapterCard(),
                        HadithCard(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  const ChapterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '১/১. অধ্যায়ঃ ',
                    style: TextStyle(
                      color: Color(0xFF118C6F),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'আমালের বিবরণ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Divider(),
            const SizedBox(height: 8),
            const Text(
              'এই বই মূলত আমালের বর্ণনা সম্পর্কিত। আমি এখানে আপনাদের জন্য বিভিন্ন আমল এবং তার ফলাফল তুলে ধরার চেষ্টা করেছি।',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF535353),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HadithCard extends StatelessWidget {
  const HadithCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    color: Color(0xFF118C6F),
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Text(
                      'B',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'সহিহ বুখারী',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      'হাদিস: ১',
                      style: TextStyle(
                        color: Color(0xFF118C6F),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF118C6F),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: const Text(
                        'সহিহ হাদিস',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.more_vert, color: Colors.grey),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'حَدَّثَنَا الْحُمَيْدِيُّ عَبْدُ اللَّهِ بْنُ الزُّبَيْرِ ، قَالَ : حَدَّثَنَا سُفْيَانُ',
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontSize: 18,
                height: 1.6,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'আমি ইবনে উমর (রাঃ)-কে বিবাহের উপর দাঁড়িয়ে বলতে শুনেছি। আমি আল্লাহর রসূল (সাল্লাল্লাহু আলাইহি ওয়া সাল্লাম)-কে বলতে শুনেছি। কাজ (এর প্রাপ্য হবে) নিয়ত অনুযায়ী। তার মধ্যে তার নিয়ত অনুযায়ী প্রতিফল পাবে।',
              style: TextStyle(
                fontSize: 14,
                height: 1.3,
                color: Color(0xFF535353),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              '[সূত্রঃ বুখারী শরীফ: ১/১, আহমাদ: ১৯৭]',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF535353),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
