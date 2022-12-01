import 'package:flutter/material.dart';

class TransactionList extends StatefulWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransaction;

  void _addNewTransaction(String title, String amount) {
    const newTx = Transaction(title: title, amount: txAmount,date: DateTime.now(), id: DateTime.now().toString(),);

    setState(() {
      _userTransaction.add(value)
    })
  }

  @override
  Widget build(BuildContext context){
    return Container(
      children: <Widget>[
        NewTransaction(_addNewTransaction(title, amount)),
        TransactionList(_userTransaction),
      ]
    )
  }
}
