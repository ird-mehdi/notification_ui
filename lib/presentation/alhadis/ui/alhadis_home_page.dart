import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:notification_ui/presentation/alhadis/widgets/hexagon_icon.dart';

class HadithHomePage extends StatelessWidget {
  const HadithHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      color: const Color(0xFF118C6E),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppBar(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          title: Text('আল হাদিস'),
                          titleTextStyle: TextStyle(
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
                              icon:
                                  const Icon(Icons.search, color: Colors.white),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: CarouselSlider(
                            options: CarouselOptions(
                              viewportFraction: 1,
                              height: 80,
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 3),
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              scrollDirection: Axis.horizontal,
                            ),
                            items: [
                              Text(
                                '"যে ব্যক্তি আমার উপর একবার দরুদ পাঠ করবে, আল্লাহ তার প্রতি দশবার রহমত প্রেরণ করবেন।"',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  height: 1.5,
                                ),
                              ),
                              Text(
                                '"সর্বোত্তম মানুষ সে-ই যে মানুষের জন্য সবচেয়ে বেশি উপকারী।"',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  height: 1.5,
                                ),
                              ),
                              Text(
                                '"যে ব্যক্তি কুরআন পাঠ করে এবং তার উপর আমল করে, কিয়ামতের দিন তার পিতা-মাতাকে একটি মুকুট পরানো হবে।"',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  height: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 80),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -50,
                    left: 20,
                    right: 20,
                    child: _buildFloatingContainer(),
                  ),
                ],
              ),
              const SizedBox(height: 80),
              _buildHadithBooksList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildFloatingContainer() {
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
        children: [
          _buildQuickAccessButton(Icons.access_time, 'সবশেষ'),
          _buildQuickAccessButton(Icons.book, 'অ্যাপস'),
          _buildQuickAccessButton(Icons.send, 'হাদিসে যান'),
          _buildQuickAccessButton(Icons.favorite, 'সদকা'),
        ],
      ),
    );
  }

  Widget _buildQuickAccessButton(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: const Color(0xFF118C6E), size: 28),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildHadithBooksList() {
    final List<Map<String, String>> books = [
      {
        'initial': 'B',
        'title': 'সহিহ বুখারী',
        'author': 'ইমাম বুখারী',
        'count': '৭৫৬৩',
      },
      {
        'initial': 'M',
        'title': 'সহিহ মুসলিম',
        'author': 'ইমাম মুসলিম',
        'count': '৭৪৭০',
      },
      {
        'initial': 'B',
        'title': 'সহিহ বুখারী',
        'author': 'ইমাম বুখারী',
        'count': '৭৫৬৩',
      },
      {
        'initial': 'M',
        'title': 'সহিহ মুসলিম',
        'author': 'ইমাম মুসলিম',
        'count': '৭৪৭০',
      },
      {
        'initial': 'B',
        'title': 'সহিহ বুখারী',
        'author': 'ইমাম বুখারী',
        'count': '৭৫৬৩',
      },
      {
        'initial': 'B',
        'title': 'সহিহ বুখারী',
        'author': 'ইমাম বুখারী',
        'count': '৭৫৬৩',
      },
      {
        'initial': 'M',
        'title': 'সহিহ মুসলিম',
        'author': 'ইমাম মুসলিম',
        'count': '৭৪৭০',
      },
      {
        'initial': 'B',
        'title': 'সহিহ বুখারী',
        'author': 'ইমাম বুখারী',
        'count': '৭৫৬৩',
      },
      {
        'initial': 'M',
        'title': 'সহিহ মুসলিম',
        'author': 'ইমাম মুসলিম',
        'count': '৭৪৭০',
      },
      {
        'initial': 'B',
        'title': 'সহিহ বুখারী',
        'author': 'ইমাম বুখারী',
        'count': '৭৫৬৩',
      },
      {
        'initial': 'M',
        'title': 'সহিহ মুসলিম',
        'author': 'ইমাম মুসলিম',
        'count': '৭৪৭০',
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
          ...books.map((book) => _buildBookCard(book)),
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
                    style: const TextStyle(
                      fontSize: 16,
                    ),
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
