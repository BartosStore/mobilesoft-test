import 'package:mobilesoft/common/generator.dart';
import 'package:mobilesoft/model/employee.dart';

class ApiClient {
  Future fetchEmployees() async {
    final List<Employee> employees = generateListOfNEmployees(10);
    return Future.delayed(
      new Duration(milliseconds: 1000),
      () => employees,
    );
  }
}
