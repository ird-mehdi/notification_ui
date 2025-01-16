import 'package:get/get.dart';

class TafsirController extends GetxController {
  var sliverExpandedHeight = 300.0.obs; // Observable variable for height
  var isExpanded = false.obs; // Observable to track expansion state

  void toggleExpansion(bool expanded) {
    isExpanded.value = expanded;
    sliverExpandedHeight.value = expanded ? 500 : 300; // Update height
  }
}
