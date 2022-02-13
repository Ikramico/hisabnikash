import 'package:flutter/material.dart';
import 'package:trans/us_tr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Demo Daily Expense App'),
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
                  userTrans()
                ],
              ),
            )));
  }
}
