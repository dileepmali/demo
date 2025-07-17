class TransactionEntity {
  final String id;
  final double amount;
  final String type; // 'income' or 'expense'
  final String category;
  final DateTime date;

  const TransactionEntity({
    required this.id,
    required this.amount,
    required this.type,
    required this.category,
    required this.date,
  });
}
