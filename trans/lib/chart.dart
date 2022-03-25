import 'package:flutter/material.dart';
import 'tra.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {
  final List<Trans> recentTrans;
  Chart(this.recentTrans);
  List<Map<String, Object>> get groupedTrans {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(
        Duration(
          days: index,
        ),
      );
      double total = 0.0;
      for (var i = 0; i < recentTrans.length; i++) {
        if (recentTrans[i].date.day == weekDay.day &&
            recentTrans[i].date.month == weekDay.month &&
            recentTrans[i].date.year == weekDay.year) {
          total += recentTrans[i].amount;
        }
      }
      print(DateFormat.E(weekDay));
      print(total);
      return {'day': DateFormat.E(weekDay), 'amount': total};
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 6,
        margin: EdgeInsets.all(5),
        child: Row(
          children: [],
        ));
  }
}
