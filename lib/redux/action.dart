import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

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
      store.dispatch(AddAllEmployeesAction(employees: employees));
    });
  };
}
