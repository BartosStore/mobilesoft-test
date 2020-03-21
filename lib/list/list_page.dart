import 'package:flutter/material.dart';

import 'package:mobilesoft/model/employee.dart';
import 'package:mobilesoft/common/generator.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<Employee> employees = generateListOfNEmployees(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: employees.length,
        itemBuilder: (context, index) => renderEmployeeTile(employees[index]),
      ),
    );
  }

  Card renderEmployeeTile(Employee employee) {
    return Card(
      child: ListTile(
        title: Text('${employee.name}'),
        subtitle: Text('${employee.department}'),
        leading: CircleAvatar(
            backgroundImage:
                AssetImage('assets/images/person_placeholder.png')),
      ),
    );
  }
}
