/// Lazy initialization
// Lazy initialization is a design pattern where the creation
// or computation of a value is delayed until it is actually needed.

/// `late` + initializer = Lazy initialization
// The variable is not initialized at declaration time.
// It is initialized the first time it is accessed.

// provideName function
String provideName() {
  print('ProvideName() called');
  return 'Sonali';
}

void main() {
  print('Start');
  late String name = provideName(); // not execute here
  print('End');
  print('Welcome $name..!'); // execute here

  /// Output without late
  // Start
  // ProvideName() called
  // End

  /// Output with late
  // Start
  // End
  // ProvideName() called
  // Welcome Sonali..!

  /// Person class object
  Person person = Person('Sonali', 26); // constructor runs immediately
  print(person.intro); // lazy initialization happens here
  // Person class Constructor is Called
  // personClassMethod called
  // My self Sonali and I am 26 years old.
}

// Person class
class Person {
  final String name; // initialize when object create
  final int age; // initialize when object create

  // Lazy initialized property
  late String intro = personClassMethod();

  Person(this.name, this.age) {
    print('Person class Constructor is Called');
  }

  String personClassMethod() {
    print('personClassMethod called');
    return 'My self $name and I am $age years old.';
  }
}
