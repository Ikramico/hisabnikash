import 'package:flutter/material.dart';
import 'tra.dart';
import 'package:intl/intl.dart';
import 'us_tr.dart';

class TransList extends StatelessWidget {
  final List<Trans> transactions;
  TransList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Card(
              child: Row(children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 20,
                  ),
                  child: Text(
                    '\$${transactions[index].amount}',
                  ),
                ),
                Column(
                  children: [
                    Text(transactions[index].title),
                    Text(
                      DateFormat('dd-MM-yy').format(transactions[index].date),
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ]),
            );
          },
          itemCount: transactions.length,
        ));
  }
}
