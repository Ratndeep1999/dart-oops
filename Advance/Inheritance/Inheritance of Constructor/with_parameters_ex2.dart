class Person {
  String name;
  int age;

  Person({required this.name, required this.age});
}

class Employee extends Person {
  String department;
  double salary;

  Employee({
    required String name,
    required int age,
    required this.department,
    required this.salary,
  }) : super(name: name, age: age); // default value pass

  showDetails() {
    print('Employee name: $name');
    print('Age: $age');
    print('Department: $department');
    print('Salary: $salary');
  }
}

void main() {
  Employee e1 = Employee(name: 'Sonali', department: "HR", salary: 20000, age: 25);
  e1.showDetails();
  // Employee name: Sonali
  // Age: 25
  // Department: HR
  // Salary: 20000.0
}
