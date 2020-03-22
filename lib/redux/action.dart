import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import 'package:mobilesoft/api/database_client.dart';
import 'package:mobilesoft/api/api_client.dart';
import 'package:mobilesoft/model/employee.dart';
import 'package:mobilesoft/redux/app_state.dart';

class AddAllEmployeesAction {
  AddAllEmployeesAction({this.employees});

  final List<Employee> employees;
}

ThunkAction<AppState> fetchEmployees() {
  return (Store<AppState> store) async {
    // mock api call
    ApiClient().fetchEmployees().then((employees) {
      // save to DB
      for (var e in employees) {
        DatabaseClient.insert(Employee.table, e);
      }
      // store.dispatch(AddAllEmployeesAction(employees: employees));
    });

    // get from DB
    // propagate items to store
    DatabaseClient.query(Employee.table).then((employeesMap) {
      var employees =
          employeesMap.map((item) => Employee.fromMap(item)).toList();
      store.dispatch(AddAllEmployeesAction(employees: employees));
    });
  };
}
