import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  AppButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(label));
  }
}
