import 'package:flutter/material.dart';
import 'tra.dart';

class newTr extends StatefulWidget {
  final Function addTx;
  newTr(this.addTx);

  @override
  State<newTr> createState() => _newTrState();
}

class _newTrState extends State<newTr> {
  final title = TextEditingController();

  final amount = TextEditingController();

  void Submit() {
    final Etitle = title.text;
    final Eamount = double.parse(amount.text.trim());
    if (Etitle.isEmpty || Eamount <= 0) {
      return;
    }
    widget.addTx(Etitle, Eamount);
    Navigator.of(context).pop();
  }

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
