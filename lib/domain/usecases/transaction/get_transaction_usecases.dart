import '../../entities/transaction_entity.dart';
import '../../repositories/transaction_repositoires.dart';

class GetTransactionsUseCase {
  final TransactionRepository repository;

  GetTransactionsUseCase(this.repository);

  Future<List<TransactionEntity>> call(String userId) {
    return repository.getTransactions(userId);
  }
}
