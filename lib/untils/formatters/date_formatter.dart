import 'package:intl/intl.dart';

class DateFormatter {
  static String formatToReadable(DateTime date) {
    return DateFormat('dd MMM yyyy').format(date); // Example: 17 Jul 2025
  }
}
