import 'package:flutter/material.dart';
import 'package:mobilesoft/common/generator.dart';

import 'package:mobilesoft/model/employee.dart';

class AppState {
  AppState({@required this.employees});

  final List<Employee> employees;

  factory AppState.init() {
    return AppState(employees: generateListOfNEmployees(10));
  }
}
