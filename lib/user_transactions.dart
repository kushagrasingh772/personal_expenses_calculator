import 'package:flutter/material.dart';
import 'new_transactions.dart';
import 'transaction_list.dart';
import 'transactions.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transactions> _userTransaction = [
    Transactions(
      id: "t1",
      title: "New Shoes",
      amount: 7000,
      date: DateTime.now(),
    ),
    Transactions(
      id: "t2",
      title: "New shirt",
      amount: 278,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transactions(
        title: txTitle,
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
