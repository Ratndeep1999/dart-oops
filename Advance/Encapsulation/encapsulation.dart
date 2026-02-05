/// Encapsulation : Fundamental representation of oops
// It represent hiding data within a library(.dart) and restrict direct access from outsiders.
// Encapsulation provides shield for internal representation of object
// to restrict outside interference, misuse and data leak.
// Encapsulation achieve through access modifiers.

/// Encapsulation achieved :
// Making class members as private and providing public 'getter' and 'setter'
// to access and update the value of private members.
// Getter : access & read.
// Setter : update & write.

class Person {
  String? _name;
  int? _age;

  // get method
  String? getName() => _name;
  int? getAge() => _age;

  // set method
  void setName(String name) => _name = name;
  void setAge(int age) => _age = age;
}

/// Note:
/// Problem 1
// If properties is final then we can not change it after run
// If values modify after run then it return exception.

/// Problem 2
// If properties is not final means null or constructor is used
// If constructor is use means variables initialize at the time of object creation.
// If null use means getters can be nullable

/// Problem 3
// If late keyword is use then object properties must be initialize
// before use otherwise throw exception

/// Solution :
// Use ? and make getters nullable type and handel null validation inside getters.
// With fields ? not use, constructor not use but setter use so, it's not sufficient.
// Use constructor, ? or late.

class Student {
  String? _name;
  String? _schoolName;

  // Student({required String name, String schoolName = 'ABC School'}): _name = name, _schoolName = schoolName;

  String? getSchoolName() => _schoolName;
  String? getName() => _name;

  setSchoolName(String schoolName) => _schoolName = schoolName;
  setName(String name) => _name = name;
}

void main() {
  /// Person object
  Person p1 = Person();
  p1.setName('Sonali');
  p1.setAge(26);
  print('Name: ${p1.getName()}'); // Name: Sonali
  print('Age: ${p1.getAge()}'); // Age: 26

  /// Student object
  // Student s1 = Student(name: 'Ratndeep');
  // print('Name: ${s1._name}'); // Name: Ratndeep
  // print('School name: ${s1._schoolName}'); // School name: ABC School
  // s1.setSchoolName('XYZ School');
  // print('School name: ${s1._schoolName}'); // School name: XYZ School

  Student s2 = Student();
  print('Name: ${s2._name ?? 'Sonali'}'); // Name: Sonali
  print('School name: ${s2._schoolName ?? 'XYZ School'}'); // School name: XYZ School
}