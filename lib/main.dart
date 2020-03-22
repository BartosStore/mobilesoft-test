import 'package:flutter/material.dart';
import 'package:mobilesoft/api/database_client.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import 'package:mobilesoft/list/list_page.dart';
import 'package:mobilesoft/redux/app_state.dart';
import 'package:mobilesoft/redux/reducer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseClient.init();
  
  final store = Store<AppState>(
    reducer,
    initialState: AppState.init(),
    middleware: [thunkMiddleware],
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
        debugShowCheckedModeBanner: false,
        title: 'Mobilesoft Employees',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ListPage(title: 'Employees'),
      ),
    );
  }
}
