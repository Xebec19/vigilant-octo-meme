import 'package:flutter/material.dart';
import 'model/transaction.dart';
import './widgets/new_transaction.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New Shirts',
      amount: 89.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'New Pants',
      amount: 49.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'New Socks',
      amount: 90.00,
      date: DateTime.now(),
    ),
  ];

  String titleInput;
  String amountInput;
  final titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter App'),
            actions: <Widget>[
              IconButton(onPressed: () {

              }, icon: Icon(Icons.add),)
            ],
          ),
          body: newTransaction,
    );
    )
  }
}
