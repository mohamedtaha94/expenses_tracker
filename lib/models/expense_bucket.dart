import 'package:expenses_app/models/expense.dart';


class ExpenseBucket {
  final CategoryEnum category;
  final List<Expense> expenses;
  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
      : expenses = allExpenses
            .where((expense) => expense.category == category)
            .toList();
  ExpenseBucket({required this.category, required this.expenses});

  double get totalExpenses {
    double sum = 0;
    for (final expense in expenses) {
      sum += expense.amount;
    }
    return sum;
  }
}
