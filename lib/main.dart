import 'package:flutter/material.dart';
import 'model/transaction.dart';
import './widgets/new_transaction.dart';
import './model/transaction.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(context: ctx, builder:(_) {
      return newTransaction();
    })
  }

  final List<Transaction> transactions = [
    // Transaction(
    //   id: 't1',
    //   title: 'New Shoes',
    //   amount: 69.99,
    //   date: DateTime.now(),
    // ),
    // Transaction(
    //   id: 't2',
    //   title: 'New Shirts',
    //   amount: 89.99,
    //   date: DateTime.now(),
    // ),
    // Transaction(
    //   id: 't3',
    //   title: 'New Pants',
    //   amount: 49.99,
    //   date: DateTime.now(),
    // ),
    // Transaction(
    //   id: 't4',
    //   title: 'New Socks',
    //   amount: 90.00,
    //   date: DateTime.now(),
    // ),
  ];

  String titleInput;
  String amountInput;
  final titleController = TextEditingController();

  widget.addTx(
    enteredTitle,
    enteredAmount,
  )

  Navigator.of(context).pop();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Expenses',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.amber,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter App'),
            actions: <Widget>[
              IconButton( 
              icon: Icon(Icons.add),
              onPressed:() {

              }
              )
            ],
          ),
          body: newTransaction,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {},
          ),
    );
    )
  }
}
