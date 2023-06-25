import 'package:expense_tracker/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 19.89,
      date: DateTime.now(),
      category: Category.others,
    ),
    Expense(
      title: 'New Laptop',
      amount: 999.99,
      date: DateTime.now(),
      category: Category.shopping,
    ),
    Expense(
      title: 'New Desk',
      amount: 450.00,
      date: DateTime.now(),
      category: Category.shopping,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Text('Expenses Chart'),
        Expanded(
          child: ExpensesList(expenses: _registeredExpenses),
        ),
      ],
    ));
  }
}
