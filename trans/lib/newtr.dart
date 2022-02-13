import 'package:flutter/material.dart';
import 'tra.dart';

class newTr extends StatelessWidget {
  final Function addTx;
  final title = TextEditingController();
  final amount = TextEditingController();

  void Submit() {
    final Etitle = title;
    final Eamount = double.parse(amount.text.trim());
    if (Etitle == '' || Eamount <= 0) {
      return;
    }
    addTx(Etitle, Eamount);
  }

  newTr(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Center(
          child: TextField(
            decoration: InputDecoration(labelText: 'Title'),
            controller: title,
            keyboardType: TextInputType.number,
            onSubmitted: (_) => Submit,
          ),
        ),
        Center(
          child: TextField(
            decoration: InputDecoration(labelText: 'amount'),
            controller: amount,
            onSubmitted: (_) => Submit,
          ),
        ),
        TextButton(
          onPressed: Submit,
          child: Text('Add Transaction'),
        )
      ]),
    );
  }
}
