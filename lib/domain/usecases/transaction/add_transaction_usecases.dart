import '../../entities/transaction_entity.dart';
import '../../repositories/transaction_repositoires.dart';

class AddTransactionUseCase {
  final TransactionRepository repository;

  AddTransactionUseCase(this.repository);

  Future<void> call(TransactionEntity transaction) {
    return repository.addTransaction(transaction);
  }
}
