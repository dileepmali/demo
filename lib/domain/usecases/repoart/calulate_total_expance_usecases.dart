import '../../entities/transaction_entity.dart';

class CalculateTotalExpenseUseCase {
  double call(List<TransactionEntity> transactions) {
    return transactions
        .where((tx) => tx.type == 'expense')
        .fold(0.0, (sum, tx) => sum + tx.amount);
  }
}
