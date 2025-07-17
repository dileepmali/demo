import '../entities/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity> login(String email, String password);
  Future<UserEntity?> getCurrentUser();
  Future<void> logout();
}
