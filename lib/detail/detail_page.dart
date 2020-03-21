import 'package:flutter/material.dart';

import 'package:mobilesoft/model/employee.dart';

class DetailPage extends StatelessWidget {
  DetailPage({this.employee});

  final Employee employee;

  @override
  Widget build(BuildContext context) {
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
              radius: 64.0,
              backgroundImage:
                  AssetImage('assets/images/person_placeholder.png'),
            ),
            SizedBox(height: 16.0),
            Text('Department: ' + employee.department),
            Text('Salary: ' + employee.salary.toString() + ' Kč'),
            Text('Address: ' + employee.address),
          ],
        ),
      ),
    );
  }
}
