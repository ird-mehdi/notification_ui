import 'package:flutter/material.dart';
import 'package:notification_ui/ai/widgets/bottomsheet_widget.dart';
import 'package:notification_ui/ai/widgets/colleactionshet.dart';

class SettingTapBar extends StatelessWidget {
  const SettingTapBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'বুকমার্ক সার্চ করুন',
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                      Radius.circular(8.0)), // Fixed Radius creation
                ),
                child: IconButton(
                  icon: const Icon(Icons.tune),
                  onPressed: () {
                    // Filter action
                    // showModalBottomSheet<void>(
                    //   context: context,
                    //   isScrollControlled: true, // Allows draggable sheet
                    //   backgroundColor:
                    //       Colors.transparent, // Make the background
                    //   builder: (BuildContext context) {
                    //     return BottomSheetWidget();
                    //   },
                    // );
                    CollectionBottomSheet.show(context);
                  },
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        child: const Icon(
                          Icons.folder,
                          color: Color(0xFFE77375),
                          size: 40,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Favourite',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18.0,
                              ),
                            ),
                            Text(
                              'কোন হাদিস যুক্ত করা হয়নি',
                              style: TextStyle(
                                color: const Color(0xFF8e8e93),
                                fontSize: 16.0,
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
          ),
        ),
      ],
    );
  }
}
