import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user_model.dart';

class AuthService {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: 'https://api.example.com',
    headers: {'Accept': 'application/json'},
  ));

  // LOGIN
  Future<UserModel> login(String email, String password) async {
    try {
      final res = await _dio.post('/login', data: {
        'email': email,
        'password': password,
      });

      final token = res.data['token'];
      await _saveToken(token);
      return UserModel.fromJson(res.data['user']);
    } catch (e) {
      throw Exception(_handleError(e));
    }
  }

  // REGISTER
  Future<UserModel> register(String name, String email, String password) async {
    try {
      final res = await _dio.post('/register', data: {
        'name': name,
        'email': email,
        'password': password,
      });

      final token = res.data['token'];
      await _saveToken(token);
      return UserModel.fromJson(res.data['user']);
    } catch (e) {
      throw Exception(_handleError(e));
    }
  }

  // FORGOT PASSWORD
  Future<void> forgotPassword(String email) async {
    try {
      await _dio.post('/forgot-password', data: {'email': email});
    } catch (e) {
      throw Exception(_handleError(e));
    }
  }

  // RESET PASSWORD
  Future<void> resetPassword(String token, String newPassword) async {
    try {
      await _dio.post('/reset-password', data: {
        'token': token,
        'password': newPassword,
      });
    } catch (e) {
      throw Exception(_handleError(e));
    }
  }

  // LOGOUT
  Future<void> logout() async {
    try {
      await _dio.post('/logout', options: await _authOptions());
      await _clearToken();
    } catch (e) {
      throw Exception(_handleError(e));
    }
  }

  // GET CURRENT USER
  Future<UserModel> getCurrentUser() async {
    try {
      final res = await _dio.get('/me', options: await _authOptions());
      return UserModel.fromJson(res.data['user']);
    } catch (e) {
      throw Exception(_handleError(e));
    }
  }

  // UPDATE PROFILE
  Future<UserModel> updateProfile(Map<String, dynamic> data) async {
    try {
      final res = await _dio.put('/profile', data: data, options: await _authOptions());
      return UserModel.fromJson(res.data['user']);
    } catch (e) {
      throw Exception(_handleError(e));
    }
  }

  // REFRESH TOKEN (optional)
  Future<void> refreshToken() async {
    try {
      final res = await _dio.post('/refresh-token', options: await _authOptions());
      final newToken = res.data['token'];
      await _saveToken(newToken);
    } catch (e) {
      throw Exception(_handleError(e));
    }
  }

  // === TOKEN UTILS ===
  Future<void> _saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('auth_token', token);
    _dio.options.headers['Authorization'] = 'Bearer $token';
  }

  Future<void> _clearToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('auth_token');
    _dio.options.headers.remove('Authorization');
  }

  Future<Options> _authOptions() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('auth_token');
    return Options(
      headers: {
        'Authorization': 'Bearer $token',
      },
    );
  }

  // === ERROR HANDLER ===
  String _handleError(dynamic e) {
    if (e is DioError) {
      if (e.response != null) {
        return e.response?.data['message'] ?? 'Unexpected error';
      } else {
        return e.message ?? 'Connection error';
      }
    } else {
      return 'Something went wrong';
    }
  }
}
