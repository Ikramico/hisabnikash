import 'package:flutter/material.dart';
import 'tra.dart';
import 'package:intl/intl.dart';

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
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Theme.of(context).primaryColorDark,
                    width: 3,
                  )),
                  child: Text(
                    '\$${transactions[index].amount.toStringAsFixed(2)}',
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
