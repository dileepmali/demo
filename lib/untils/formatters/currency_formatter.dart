import 'package:intl/intl.dart';

class CurrencyFormatter {
  static String format(double amount) {
    final formatter = NumberFormat.currency(locale: 'en_IN', symbol: '₹');
    return formatter.format(amount);
  }
}
