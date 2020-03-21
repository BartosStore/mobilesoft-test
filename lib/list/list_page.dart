import 'package:flutter/material.dart';

import 'package:mobilesoft/model/employee.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<Employee> employees =
      List.generate(10, (index) => Employee(name: 'Josef Novak $index'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: employees.length,
        itemBuilder: (context, index) => Text('${employees[index].name}'),
      ),
    );
  }
}
