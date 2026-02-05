abstract class Person {
  String get name; // for better use getters
  int get age;

  void intro();

  void canWalk();

  void canRun();
}

class Student implements Person {
  @override
  final String name;

  @override
  final int age;

  Student({required this.name, required this.age});

  @override
  void intro() {
    print('My name is $name and my age is $age');
  }

  @override
  void canWalk() {
    print('Student $name can walk!..');
  }

  @override
  void canRun() {
    print('Student $name can run!..');
  }
}

void main() {
  Person student = Student(name: 'Ratndeep', age: 26);

  student.intro(); // My name is Ratndeep and my age is 26
  student.canWalk(); // Student Ratndeep can walk!..
  student.canRun(); // Student Ratndeep can run!..

  // student.name = 'Sonali';  // can not set - There isn't a setter named 'name' in class 'Person'.
  // student.age = 25;
  student.intro(); // My name is Sonali and my age is 25
  student.canWalk(); // Student Sonali can walk!..
  student.canRun(); // Student Sonali can run!..
}

/// Case : abstract class + implements (Constructor NOT USED)
// Here, Person’s constructor is ignored completely. Because implements treats Person as a pure interface.
// Student() : super(); // ERROR  ..So this is NOT allowed
// Student({required this.name, required this.age}); means constructor in Person exists because
// of abstract class, but Student cannot access it because after 'implement' Student get Person
// as pure interface.

/// Remember
// When an abstract class is used with 'implements'
// --> It behaves as a pure interface
// --> Constructors are NOT inherited
// --> 'super() cannot be called
// --> All methods and getters must be implemented

/// Rule:
// Reuse constructor + state --> use 'extends'
// Enforce behavior only --> use 'implements'

/// Note:
// When using an abstract class as an interface, expose data using getters
// (e.g. 'String get name;'), not fields. Constructors and state belong to
// the implementing class (common in Flutter Clean Architecture).