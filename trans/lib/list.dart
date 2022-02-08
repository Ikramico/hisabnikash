import 'package:flutter/material.dart';
import 'tra.dart';
import 'package:intl/intl.dart';
import 'us_tr.dart';

class TransList extends StatelessWidget {
  final List<Trans> transactions;
  TransList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tx) {
        return Card(
          child: Row(children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 20,
              ),
              child: Text(
                '\$${tx.amount}',
              ),
            ),
            Column(
              children: [
                Text(tx.title),
                Text(
                  DateFormat('dd-MM-yy').format(tx.date),
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )
          ]),
        );
      }).toList(),
    );
  }
}
