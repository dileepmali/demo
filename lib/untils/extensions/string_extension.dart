extension StringExtensions on String {
  // Email validation (simple regex)
  bool get isValidEmail {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(this);
  }

  // Check if string is numeric
  bool get isNumeric {
    return double.tryParse(this) != null;
  }

  // Capitalize first letter
  String get capitalize {
    if (isEmpty) return '';
    return this[0].toUpperCase() + substring(1);
  }
}
