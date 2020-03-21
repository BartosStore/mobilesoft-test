import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mobilesoft/detail/detail_page.dart';
import 'package:mobilesoft/form/form_page.dart';

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
    return StoreConnector<AppState, List<Employee>>(
      onInit: (store) => store.dispatch(fetchEmployees()),
      converter: (store) => store.state.employees,
      builder: (context, employees) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => FormPage())),
            )
          ],
        ),
        body: employees.length == 0
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: employees.length,
                itemBuilder: (context, index) =>
                    renderEmployeeTile(employees[index]),
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
          backgroundImage: AssetImage('assets/images/person_placeholder.png'),
          backgroundColor: Colors.transparent,
        ),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (ctx) => DetailPage(employee: employee)),
        ),
      ),
    );
  }
}
