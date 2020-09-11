import 'package:flutter/material.dart';
class NewTransaction extends StatelessWidget {

  final Function addTx;
  final _titleController= TextEditingController();
  final _amountController= TextEditingController();
  NewTransaction(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
            ),
            FlatButton(
                child: Text('Add Transaction'),
              textColor: Colors.purple,
              onPressed: (){
                addTx(_titleController.text,
                    double.parse(_amountController.text),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
