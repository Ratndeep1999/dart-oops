/// Encapsulation : Fundamental representation of oops
// It means hiding data within a library and restrict it from outside direct access.
// Encapsulation provides shield for internal representation of object
// to restrict outside interference, misuse and data leak.
// Encapsulation achieve through access modifiers.

/// Encapsulation achieved :
// Making class members as private and providing public 'getter' and 'setter'
// to access and update the value op private members.
// Getter : access & read.
// Setter : update & set.

class Person {
  String? _name;
  int? _age;

  String? getName() => _name;

  int? getAge() => _age;

  void setName(String name) => _name = name;

  void setAge(int age) => _age = age;
}

/// Note:
/// Problem 1
// If properties is final then we can not change it latter
// means we can set values at once before run if we use setter to set value
// after run then ir return exception.

/// Problem 2
// If properties is not final means null or constructor is used
// If constructor is use means values never null
// If null use means getter can return null.

/// Solution : to override
// Use null and make getters nullable type and handel null operation inside print().
// Use late but insure to initialize before use otherwise Unhandled exception.
// If not null, final, and late means constructor is used.

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
  Person p1 = Person();
  p1.setName('Sonali');
  p1.setAge(26);
  print('Name: ${p1.getName()}'); // Name: Sonali
  print('Age: ${p1.getAge()}'); // Age: 26

  // Student s1 = Student(name: 'Ratndeep');
  // print('Name: ${s1._name}'); // Name: Ratndeep
  // print('School name: ${s1._schoolName}'); // Name: ABC School
  // s1.setSchoolName('XYZ School');
  // print('School name: ${s1._schoolName}'); // Name: ABC School

  Student s2 = Student();
  print('Name: ${s2._name ?? 'Sonali'}');
  print('Name: ${s2._schoolName ?? 'XYZ School'}');
}
