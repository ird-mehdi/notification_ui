import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:notification_ui/core/common/widgets/app_bar_widget.dart';
import 'package:notification_ui/core/constant/app_colors.dart';
import 'package:notification_ui/core/constant/app_images.dart';
import 'package:notification_ui/features/tafsir/presentation/widgets/collapsible_container.dart';
import 'package:notification_ui/features/tafsir/presentation/controller/tafsir_controller.dart';

class TafsirPage extends StatelessWidget {
  const TafsirPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize controller
    final TafsirController controller = Get.put(TafsirController());

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Tafsir',
        showLeadingIcon: true,
        onLeadingPressed: () {},
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppImages.icSetting2),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 3, // Number of tabs
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              Obx(() => SliverAppBar(
                    expandedHeight: controller.sliverExpandedHeight.value,
                    backgroundColor: AppColors.backgroundColor,
                    pinned: true,
                    floating: false,
                    flexibleSpace: FlexibleSpaceBar(
                      background: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CollapsibleContainer(
                              controller: controller,
                              title: "Al Fatiha 1:5",
                              arabicText:
                                  "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ",
                              translation:
                                  "In the name of Allah, the Entirely Merciful, the Especially Merciful.",
                            ),
                          ),
                          CollapsibleContainer(
                            controller: controller,
                            title: "Al Fatiha 1:5",
                            arabicText:
                                "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ",
                            translation:
                                "In the name of Allah, the Entirely Merciful, the Especially Merciful.",
                          ),
                        ],
                      ),
                    ),
                    bottom: TabBar(
                      tabs: [
                        Tab(icon: Icon(Icons.home), text: "Home"),
                        Tab(icon: Icon(Icons.star), text: "Favorites"),
                        Tab(icon: Icon(Icons.settings), text: "Settings"),
                      ],
                    ),
                  ))
            ];
          },
          body: TabBarView(
            children: [
              _buildTabContent("Home Content"),
              _buildTabContent("Favorites Content"),
              _buildTabContent("Settings Content"),
            ],
          ),
        ),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: SvgPicture.asset(AppImages.icElementPlus),
      ),
    );
  }

  Widget _buildTabContent(String content) {
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemCount: 50,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('$content Item $index'),
        );
      },
    );
  }
}
