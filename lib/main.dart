import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'user_transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Experiences',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  final titleController= TextEditingController();
  final amountController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My_manager'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('Chart'),
                elevation: 5,
              ),
            ),
            UserTransactions(),
          ],
        ),
      ),
    );
  }
}
