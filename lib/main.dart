import 'package:flutter/material.dart';
import 'package:notification_ui/core/bindings/initial_binding.dart';
import 'package:notification_ui/presentation/quran_majeed_app.dart';

void main() {
  // Initialize dependencies
  InitialBinding().dependencies();

  runApp(const QuranMajeedApp());
}
