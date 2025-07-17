import '../../entities/user_entity.dart';
import '../../repositories/user_repositoires.dart';

class LoginUserUseCase {
  final UserRepository repository;

  LoginUserUseCase(this.repository);

  Future<UserEntity> call(String email, String password) {
    return repository.login(email, password);
  }
}
