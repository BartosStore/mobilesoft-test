class Employee {
  static String table = 'employees';

  Employee({
    this.id,
    this.name,
    this.department,
    this.address,
    this.salary,
    this.photo,
  });

  final int id;
  final String name;
  final String department;
  final String address;
  final double salary;
  final String photo;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'department': department,
      'address': address,
      'salary': salary
    };
  }

  static Employee fromMap(Map<String, dynamic> map) {
    return Employee(
      id: map['id'],
      name: map['name'],
      department: map['name'],
      address: map['address'],
      salary: map['salary'],
    );
  }

  @override
  String toString() {
    return 'Employee{id: $id, name: $name, department: $department, address: $address, salary: $salary}';
  }
}
