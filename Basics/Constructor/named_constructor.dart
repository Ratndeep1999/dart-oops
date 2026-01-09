/// Named Constructor
// Use to create multiple constructors with same name that improves code readability.
// A named constructor is a constructor with a custom name after the class name.

/// Syntax
// ClassName.constructorName(parameters);

/// Person class
class Person {
  String name;
  int age;

  // Default constructor
  Person(this.name, this.age);

  // Named Constructor
  Person.onlyName(this.name, [this.age = 0]);

  // Person.onlyName(this.name) : age = 0;

  showData() {
    print('Name: $name');
    print('Age: $age');
  }
}

/// Student class
class Student {
  String name;
  int marks;

  Student({required this.name, required this.marks});

  Student.fail({required this.name}) : marks = 0 {
    print('Student Failed');
  }

  showData() {
    print('Name: $name');
    print('Marks: $marks');
  }
}

void main() {
  /// Person object
  Person p1 = Person('Ratndeep', 26);
  p1.showData();
  // Name: Ratndeep
  // Age: 26

  Person p2 = Person.onlyName('Sonali');
  p2.showData();
  // Name: Sonali
  // Age: 0

  /// Student object
  Student s1 = Student(name: 'Ratndeep', marks: 55);
  s1.showData();
  // Name: Ratndeep
  // Marks: 55

  Student s2 = Student.fail(name: 'Sonali'); // Student Failed
}
