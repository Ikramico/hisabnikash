import 'package:flutter/material.dart';
import 'tra.dart';

class newTr extends StatelessWidget {
  final Function addTx;
  final title = TextEditingController();
  final amount = TextEditingController();

  newTr(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Center(
          child: TextField(
            decoration: InputDecoration(labelText: 'Title'),
          ),
        ),
        Center(
          child: TextField(
            decoration: InputDecoration(labelText: 'amount'),
          ),
        ),
        TextButton(
          onPressed: () {
            addTx(title.text, double.parse(amount.text));
          },
          child: Text('Add Transaction'),
        )
      ]),
    );
  }
}
