import 'package:flutter/material.dart';

class AppTextStyles {
  // Headings
  static const TextStyle h1 = TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black);
  static const TextStyle h2 = TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black);
  static const TextStyle h3 = TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black);
  static const TextStyle h4 = TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black);
  static const TextStyle h5 = TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black);
  static const TextStyle h6 = TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black);

  static const TextStyle subHeading = h4;
  static const TextStyle title = h3;

  static const TextStyle subtitle = TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black87);

  // Body
  static const TextStyle body = TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black87);
  static const TextStyle bodySmall = TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black87);

  // Caption / Label
  static const TextStyle caption = TextStyle(fontSize: 12, color: Colors.grey);
  static const TextStyle label = TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black);

  // Button
  static const TextStyle button = TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white);
  static const TextStyle buttonSecondary = TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black);

  // Input & Link
  static const TextStyle input = TextStyle(fontSize: 16, color: Colors.black87);
  static const TextStyle link = TextStyle(fontSize: 14, color: Colors.blue, decoration: TextDecoration.underline);

  // Error
  static const TextStyle error = TextStyle(fontSize: 13, color: Colors.red);

  // AppBar Title
  static const TextStyle appBarTitle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white);
}
