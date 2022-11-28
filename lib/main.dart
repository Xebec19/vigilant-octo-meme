import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              color: Colors.blue,
              child: Container(
                width: double.infinity,
                child: Text('Chart'),
              ),
              elevation: 5,
            ),
            Column(
              children: transactions.map((tx) {
                return Card(
                  child: Text(tx.title),
                );
              }).toList(),
            ),
            Card(
              child: Text('List of TX)'),
            )
          ],
        ),
      ),
    );
  }
}
