import 'package:flutter/material.dart';
import 'package:mobilesoft/model/employee.dart';

class DetailPage extends StatelessWidget {
  DetailPage({this.employee});

  final Employee employee;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${employee.name}'),),
      body: Column(
        children: <Widget>[
          Text(employee.name),
          Text(employee.department),
          Text(employee.address),
          Text(employee.salary.toString()),
        ],
      ),
    );
  }
}
