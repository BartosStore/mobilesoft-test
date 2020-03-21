import 'package:mobilesoft/redux/action.dart';
import 'package:mobilesoft/redux/app_state.dart';

AppState reducer(AppState state, dynamic action) {
  if (action is AddAllEmployeesAction) {
    return addAllEmployees(state, action);
  }
  return state;
}

AppState addAllEmployees(AppState state, AddAllEmployeesAction action) {
  return state.copyWith(action.employees);
}