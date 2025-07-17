import '../../models/user_model.dart';
import '../../repositories/auth_repositories.dart';

class LoginUseCase {
  final AuthRepository _repo;

  LoginUseCase(this._repo);

  Future<UserModel> call(String email, String password) async {
    // Step 1: Simple validation
    if (email.isEmpty || !email.contains('@')) {
      throw ArgumentError('Invalid email address');
    }
    if (password.isEmpty || password.length < 6) {
      throw ArgumentError('Password must be at least 6 characters long');
    }

    try {
      // Step 2: Call repository login function
      final user = await _repo.login(email, password);

      // Step 3: Optional - Log success or perform any additional business logic
      print('Login successful for user: ${user.email}');

      // Step 4: Return the user data
      return user;
    } catch (e) {
      // Step 5: Handle errors gracefully, rethrow or map to custom error
      print('Login failed: $e');
      throw Exception('Login failed. Please check your credentials and try again.');
    }
  }
}
