// Folder: test/view/login_view_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import '../../views/login.dart';

void main() {
  testWidgets('Login view renders email and password fields', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginView()));

    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.text('Login'), findsOneWidget);
  });
}