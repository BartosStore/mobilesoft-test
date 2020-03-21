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
      body: ListView.separated(
        separatorBuilder: (ctx, _) => Divider(color: Colors.black38),
        itemCount: employees.length,
        itemBuilder: (context, index) => ListTile(
          title: Text('${employees[index].name}'),
          subtitle: Text('${employees[index].department}'),
          leading: Icon(Icons.person),
        ),
      ),
    );
  }
}
