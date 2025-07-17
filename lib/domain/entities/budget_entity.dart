class BudgetEntity {
  final String id;
  final String userId;
  final String category;
  final double limit;
  final DateTime startDate;
  final DateTime endDate;

  const BudgetEntity({
    required this.id,
    required this.userId,
    required this.category,
    required this.limit,
    required this.startDate,
    required this.endDate,
  });
}
