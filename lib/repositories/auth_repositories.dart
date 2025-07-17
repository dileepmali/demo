import '../models/user_model.dart';
import '../services/auth_service.dart';

class AuthRepository {
  final AuthService _service;

  AuthRepository(this._service);

  Future<UserModel> login(String email, String password) {
    return _service.login(email, password);
  }
}
