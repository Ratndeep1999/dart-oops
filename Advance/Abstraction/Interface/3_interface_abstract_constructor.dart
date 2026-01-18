abstract class Person {
  late String name;
  late int age;

  void intro();

  void canWalk();

  void canRun();
}

class Student implements Person {
  @override
  String name;
  @override
  int age;

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
  // Student student = Student();
  // To achieve this make variables 'late' with final if 'get' use in interface
  // student.name = 'Ratndeep';
  // student.age = 26;

  Person student = Student(name: 'Ratndeep', age: 26);

  student.intro(); // My name is Ratndeep and my age is 26
  student.canWalk(); // Student Ratndeep can walk!..
  student.canRun(); // Student Ratndeep can run!..
}

/// Case : abstract class + implements (Constructor NOT USED)
// Here, Person’s constructor is ignored completely.
// Because implements treats Person as a pure interface.
// Student() : super(); // ERROR  ..So this is NOT allowed:
// Student({required this.name, required this.age});
// means constructor in Person exists, but Student cannot access it.

/// Important Rule: constructor + interface behavior not work together
// Reuse constructor + fields --> extends
// Pure contract / interface  --> implements

/// Note:
// 1. When using an abstract class as an interface,
// never declare fields directly — use getters instead. eg. String get name;
// This is how repositories, entities, and domain layers are written in Flutter.

// In Dart, when an abstract class is used as an interface via implements,
// it should expose behavior and data through getters, not fields.
// Constructors and state belong to the implementing class.
