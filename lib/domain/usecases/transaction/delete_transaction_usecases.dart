import '../../repositories/transaction_repositoires.dart';

class DeleteTransactionUseCase {
  final TransactionRepository repository;

  DeleteTransactionUseCase(this.repository);

  Future<void> call(String transactionId) {
    return repository.deleteTransaction(transactionId);
  }
}
