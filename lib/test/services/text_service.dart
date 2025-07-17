// Folder: test/service/auth_service_test.dart
import 'package:flutter_test/flutter_test.dart';

import '../../services/auth_service.dart';

void main() {
  group('AuthService Test', () {
    final authService = AuthService();

    test('Login success', () async {
      final result = await authService.login('d@example.com', 'password123');
      expect(result, true);
    });
  });
}