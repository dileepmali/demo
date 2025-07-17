import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  // 🌈 Brand Colors
  static const Color primary = Color(0xFF1E88E5);
  static const Color primaryDark = Color(0xFF1565C0);
  static const Color primaryLight = Color(0xFF90CAF9);

  static const Color secondary = Color(0xFF42A5F5);
  static const Color secondaryDark = Color(0xFF1976D2);
  static const Color secondaryLight = Color(0xFFBBDEFB);

  // 🖼️ Backgrounds
  static const Color background = Color(0xFFF5F5F5);
  static const Color backgroundDark = Color(0xFF303030);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color scaffoldBackground = Color(0xFFF0F0F0);

  // 🎨 Text Colors
  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF757575);
  static const Color textDisabled = Color(0xFFBDBDBD);
  static const Color textInverse = Color(0xFFFFFFFF);

  // ✔️ Status Colors
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFFA000);
  static const Color error = Color(0xFFD32F2F);
  static const Color info = Color(0xFF2196F3);

  // 🧱 Border & Divider
  static const Color border = Color(0xFFBDBDBD);
  static const Color divider = Color(0xFFEEEEEE);

  // 🌚 States
  static const Color disabled = Color(0xFF9E9E9E);
  static const Color focus = Color(0xFF64B5F6);
  static const Color hover = Color(0xFFE3F2FD);
  static const Color selected = Color(0xFFD1E3F8);

  // 🔳 Card & Containers
  static const Color card = Color(0xFFFFFFFF);
  static const Color sheet = Color(0xFFF8F8F8);

  // 🔲 Shadows
  static const Color shadowLight = Color(0x29000000); // black26
  static const Color shadowDark = Color(0x66000000); // black40

  // 🌫️ Overlay
  static const Color overlay = Color(0x80000000); // 50% Black

  // ⛔ Alert/Dialog
  static const Color dialogBackground = Color(0xFFFFFFFF);
  static const Color snackBarBackground = Color(0xFF323232);

  // 🎛️ Button colors
  static const Color buttonPrimary = primary;
  static const Color buttonSecondary = secondary;
  static const Color buttonDisabled = Color(0xFFBDBDBD);
  static const Color buttonText = Colors.white;

  // 🎨 Gradient Colors
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF42A5F5), Color(0xFF1E88E5)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient secondaryGradient = LinearGradient(
    colors: [Color(0xFF64B5F6), Color(0xFF2196F3)],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );

  // 🚫 Transparent
  static const Color transparent = Colors.transparent;
}
