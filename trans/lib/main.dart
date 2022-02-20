import 'package:flutter/material.dart';
import 'package:trans/list.dart';
import 'package:trans/newtr.dart';
import 'tra.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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

  void addNewTr(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (C) {
        return GestureDetector(
          onTap: () {},
          child: newTr(AddNew),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Demo Daily Expense App'),
        actions: [
          Builder(
            builder: (BuildContext context) => Container(
              child: IconButton(
                // onPressed: () => addNewTr(context),
                onPressed: () {
                  showModalBottomSheet(
                      context: context, builder: (context) => newTr(AddNew));
                },
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              margin: EdgeInsets.only(right: 20),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                child: Text('Chart'),
              ),
            ),
            TransList(_userTrans)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Builder(
        builder: (BuildContext context) => FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => addNewTr(context),
        ),
      ),
    ));
  }
}
