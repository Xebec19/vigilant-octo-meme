import 'package:flutter/material.dart';

class newTransaction extends StatelessWidget {
  final Function addTx;

  newTransaction(this.addTx);
  
  @override
  Widget build(BuildContext context) {
    return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Title',
                  onChanged: (val) {
                    titleInput = val;
                  },
                ),
              ),
              TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    labelText: 'Title',
                  ),
                  TextButton(
                      child: Text('Add Transaction'),
                      textColor: Theme.of(context).primaryColor,
                      onPressed: () {
                        double.parse(amountController.text)
                      })),
            ]);
  }
}
