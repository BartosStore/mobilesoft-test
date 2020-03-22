import 'package:mobilesoft/model/employee.dart';

List<Employee> generateListOfNEmployees(int count) {
  return List.generate(
    count,
    (index) => Employee(
      id: index,
      name: 'Josef Novak $index',
      department: 'Sales department',
      address: 'Hradec Kralove',
      salary: 28000.00 + index,
    ),
  );
}
