import 'package:mobilesoft/model/employee.dart';

List<Employee> generateListOfNEmployees(int count) {
  return List.generate(count, (index) => Employee(name: 'Josef Novak $index'));
}