import 'package:expense_tracker/widgets/chart_days.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    var texttheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker App'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded))
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: Text(
                  'Total Expense',
                  style: texttheme.titleLarge,
                ),
              ),
              ElevatedButton(onPressed: () {}, child: const Text('9000Rs')),

            ],
          ),
             ChartBar()
        ],
      ),
    );
  }
}
