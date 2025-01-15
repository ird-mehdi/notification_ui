import 'package:get/get.dart';

class MemorizationController extends GetxController {
  // Simulated list of data for memorization cards
  final RxList<Map<String, dynamic>> memorizationData =
      <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    _fetchMemorizationData(); // Load initial data
  }

  // Function to fetch data (replace with actual API or database call)
  void _fetchMemorizationData() {
    memorizationData.clear();
    final sampleData = List.generate(2, (index) {
      return {
        "isVolume": index % 2 == 0 ? false : true,
        "title": "My 50 Day Plan",
        "daysLeft": 21,
        "progressText": "From 1:${index + 1} - 5:36",
        "currentSurah": "Now Al Baqarah - 2:${5 + index}",
        "status": index % 2 == 0 ? "Turned Off" : "5:30 PM Daily",
        "endDate": "Ends in Jan 14, 2025",
        "progress": 0.75 - (index * 0.2),
      };
    });

    memorizationData.assignAll(sampleData);
  }
}
