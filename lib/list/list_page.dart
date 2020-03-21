import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:mobilesoft/model/employee.dart';
import 'package:mobilesoft/redux/action.dart';
import 'package:mobilesoft/redux/app_state.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    // todo: render CircularProgressIndicator
    return StoreConnector<AppState, List<Employee>>(
      onInit: (store) => store.dispatch(fetchEmployees()),
      converter: (store) => store.state.employees,
      builder: (context, employees) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
          itemCount: employees.length,
          itemBuilder: (context, index) => renderEmployeeTile(employees[index]),
        ),
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
