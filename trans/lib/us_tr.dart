import 'package:flutter/material.dart';
import 'list.dart';
import 'tra.dart';
import 'newtr.dart';

class userTrans extends StatefulWidget {
  @override
  _userTransState createState() => _userTransState();
}

class _userTransState extends State<userTrans> {
  @override
  final List<Trans> _userTrans = [
    Trans(
        id: 'tx456', title: 'Radioactive', amount: 96.56, date: DateTime.now()),
    Trans(id: 'tx982', title: 'Microwave', amount: 87.56, date: DateTime.now()),
    Trans(id: 'tx743', title: 'Monolight', amount: 69.69, date: DateTime.now()),
  ];
  void AddNew(String title, double amount) {
    final newTx = Trans(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());

    setState(() {
      _userTrans.add(newTx);
    });
  }

  Widget build(BuildContext context) {
    return Column(children: [
      newTr(AddNew),
      TransList(_userTrans),
    ]);
  }
}
