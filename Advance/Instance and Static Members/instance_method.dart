/// Instance Method
// A non-static method defined inside a class, and operates on an instance of class.
// It can access instance variables and other instance methods of same object.

/// Key-Points
// Called using an object of the class.
// Defines behavior specific to an object.
// Can use the `this` keyword to refer to the current instance.

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  // Instance method
  void intro() => print('My name is $name and i\'am $age years old.');
}