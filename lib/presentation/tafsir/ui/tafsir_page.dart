import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:notification_ui/core/constants/app_colors.dart';
import 'package:notification_ui/core/constants/app_images.dart';
import 'package:notification_ui/presentation/tafsir/widgets/app_bar.dart';
import 'package:notification_ui/presentation/tafsir/widgets/collapsible_container.dart';

class TafsirPage extends StatefulWidget {
  const TafsirPage({super.key});

  @override
  State<TafsirPage> createState() => _TafsirPageState();
}

class _TafsirPageState extends State<TafsirPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Tab> _tabs = [
    Tab(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('En: Ibn Kathir'),
          SizedBox(width: 8),
          SvgPicture.asset(AppImages.icAddCircle),
        ],
      ),
    ),
    Tab(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Bn: Bayan Foundation2'),
          SizedBox(width: 8),
          SvgPicture.asset(AppImages.icCloseCircle),
        ],
      ),
    ),
    Tab(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Add More'),
          SizedBox(width: 8),
          SvgPicture.asset(AppImages.icAddCircle),
        ],
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            CustomSliverAppBar(
                title: 'Tafsir',
                showLeadingIcon: true,
                onLeadingPressed: () {
                  Navigator.of(context).pop();
                }),
            SliverList(
              delegate: SliverChildListDelegate([
                CollapsibleContainer(
                  icon: AppImages.icStar,
                  title: "Al Fatiha 1:5",
                  arabicText: "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ",
                  translation:
                      "In the name of Allah, the Entirely Merciful, the Especially Merciful.",
                ),
                CollapsibleContainer(
                  icon: AppImages.icDocumentText,
                  title: "About Surah Fatiha",
                  translation:
                      "In the name of Allah, the Entirely Merciful, the Especially Merciful. The scholars also agree that Bismillah is a part of an Ayah in Surah An-Naml (Surah 27)... See More",
                ),
              ]),
            ),
            SliverPersistentHeader(
              delegate: _SliverTabBarDelegate(
                TabBar(
                  labelColor: AppColors.iconColor,
                  unselectedLabelColor: AppColors.messageText,
                  controller: _tabController,
                  tabs: _tabs,
                  isScrollable: true,
                  labelPadding: EdgeInsets.zero,
                  tabAlignment: TabAlignment.start,
                  indicatorPadding: EdgeInsets.zero, // Add this line
                ),
                pinned: true,
              ),
              pinned: true,
              floating: false,
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Center(
              child: const Text(
                "Content of Tab 1",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Center(
                child: const Text("Content of Tab 2",
                    style: TextStyle(fontSize: 20))),
            Center(
                child: const Text("Content of Tab 3",
                    style: TextStyle(fontSize: 20))),
          ],
        ),
      ),
    );
  }
}

class _SliverTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;
  final bool pinned;

  _SliverTabBarDelegate(this.tabBar, {this.pinned = false});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: AppColors.actionBackground,
      child: tabBar,
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
