import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notification_ui/presentation/alhadis/widgets/hexagon_icon.dart';
import 'package:notification_ui/presentation/tafsir/ui/tafsir_page.dart';

class HadithHomePage extends StatelessWidget {
  const HadithHomePage({super.key});

  static const Color primaryColor = Color(0xFF118C6E);
  static const Color backgroundColor = Color(0xFFF4F4F4);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: primaryColor,
    ));
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildHeader(context),
              const SizedBox(height: 80),
              _buildHadithBooksList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        _buildHeaderBackground(),
        Positioned(
          bottom: -50,
          left: 20,
          right: 20,
          child: _buildFloatingContainer(context),
        ),
      ],
    );
  }

  Widget _buildHeaderBackground() {
    return Container(
      height: 400,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        color: primaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildAppBar(),
          _buildCarousel(),
          const SizedBox(height: 80),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text('আল হাদিস'),
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.menu, color: Colors.white),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search, color: Colors.white),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildCarousel() {
    final List<String> carouselItems = [
      '"যে ব্যক্তি আমার উপর একবার দরুদ পাঠ করবে, আল্লাহ তার প্রতি দশবার রহমত প্রেরণ করবেন।"',
      '"সর্বোত্তম মানুষ সে-ই যে মানুষের জন্য সবচেয়ে বেশি উপকারী।"',
      '"যে ব্যক্তি কুরআন পাঠ করে এবং তার উপর আমল করে, কিয়ামতের দিন তার পিতা-মাতাকে একটি মুকুট পরানো হবে।"',
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 1,
          height: 80,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          scrollDirection: Axis.horizontal,
        ),
        items: carouselItems.map((item) => _buildCarouselItem(item)).toList(),
      ),
    );
  }

  Widget _buildCarouselItem(String text) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        height: 1.5,
      ),
    );
  }

  Widget _buildFloatingContainer(BuildContext context) {
    final List<Map<String, dynamic>> quickAccessItems = [
      {'icon': Icons.access_time, 'label': 'সবশেষ'},
      {'icon': Icons.book, 'label': 'অ্যাপস'},
      {'icon': Icons.send, 'label': 'হাদিসে যান'},
      {'icon': Icons.favorite, 'label': 'সদকা'},
    ];

    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(26),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: quickAccessItems
            .map((item) =>
                _buildQuickAccessButton(item['icon'], item['label'], context))
            .toList(),
      ),
    );
  }

  Widget _buildQuickAccessButton(
      IconData icon, String label, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const TafsirPage()));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: primaryColor, size: 28),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHadithBooksList() {
    final List<Map<String, String>> books = [
      {
        'initial': 'B',
        'title': 'সহিহ বুখারী',
        'author': 'ইমাম বুখারী',
        'count': '৭৫৬৩'
      },
      {
        'initial': 'M',
        'title': 'সহিহ মুসলিম',
        'author': 'ইমাম মুসলিম',
        'count': '৭৪৭০'
      },
      {
        'initial': 'M',
        'title': 'সহিহ মুসলিম',
        'author': 'ইমাম মুসলিম',
        'count': '৭৪৭০'
      },
      {
        'initial': 'M',
        'title': 'সহিহ মুসলিম',
        'author': 'ইমাম মুসলিম',
        'count': '৭৪৭০'
      },
      // Add more books as needed
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'সব হাদিসের বই',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: books.length,
            itemBuilder: (context, index) => _buildBookCard(books[index]),
          ),
        ],
      ),
    );
  }

  Widget _buildBookCard(Map<String, String> book) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            HexagonIcon(number: book['initial']!),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book['title']!,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    book['author']!,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  book['count']!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'হাদিস',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: const Color(0xFF18A583),
      unselectedItemColor: Colors.grey,
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.book), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.save), label: ''),
      ],
    );
  }
}
