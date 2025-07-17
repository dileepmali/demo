import '../../entities/user_entity.dart';
import '../../repositories/user_repositoires.dart';

class GetCurrentUserUseCase {
  final UserRepository repository;

  GetCurrentUserUseCase(this.repository);

  Future<UserEntity?> call() {
    return repository.getCurrentUser();
  }
}
