import '../../entities/transaction_entity.dart';

class CalculateTotalIncomeUseCase {
  double call(List<TransactionEntity> transactions) {
    return transactions
        .where((tx) => tx.type == 'income')
        .fold(0.0, (sum, tx) => sum + tx.amount);
  }
}
