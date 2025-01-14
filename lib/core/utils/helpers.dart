// ignore_for_file: avoid_print

class Helpers {
  static String formatDate(DateTime date) {
    return '${date.year}-${date.month}-${date.day}';
  }
  
  static void log(String message) {
    print('APP_LOG: $message');
  }
} 