import 'package:flutter/material.dart';

import 'package:mobilesoft/model/employee.dart';

class DetailPage extends StatelessWidget {
  DetailPage({this.employee});

  final Employee employee;

  @override
  Widget build(BuildContext context) {
    final valueTextStyle = TextStyle(fontWeight: FontWeight.bold);

    return Scaffold(
      appBar: AppBar(
        title: Text('${employee.name}'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 110,
              backgroundImage:
                  AssetImage('assets/images/person_placeholder.png'),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.all(16.0),
                crossAxisCount: 2,
                crossAxisSpacing: 0,
                childAspectRatio: 3,
                children: <Widget>[
                  Text('Department'),
                  Text(employee.department, style: valueTextStyle),
                  Text('Salary'),
                  Text(employee.salary.toString() + ' Kč',
                      style: valueTextStyle),
                  Text('Address'),
                  Text(employee.address, style: valueTextStyle),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
