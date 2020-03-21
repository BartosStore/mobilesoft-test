import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:mobilesoft/list/list_page.dart';
import 'package:mobilesoft/redux/app_state.dart';
import 'package:mobilesoft/redux/reducer.dart';

void main() {
  final store = Store<AppState>(
    reducer,
    initialState: AppState.init(),
  );

  runApp(
    EmployeesApp(
      store: store,
    ),
  );
}

class EmployeesApp extends StatelessWidget {
  EmployeesApp({Key key, this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Mobilesoft Employees',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ListPage(title: 'Employees'),
      ),
    );
  }
}
