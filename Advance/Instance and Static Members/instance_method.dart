/// Instance Method
// Non-static, defines inside class and operate on an instance of class.
// Can access instance variable and other instance methods of same object.

/// Key-Points
// Invoke by object of class.
// Use to define behavior or functionality specific to an object.
// Use this keyword to refer to current instance.

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  // Instance method
  void intro() => print('My name is $name and i\'am $age years old.');
}