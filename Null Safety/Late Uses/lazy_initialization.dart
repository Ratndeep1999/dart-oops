/// Lazy initialization
// Design pattern that delays the creation of an object.

/// Lazy loading
// late means a variable initializes when we access it for the first time, this is lazy loading.

// provideName function
String provideName() {
  print('ProvideName() called');
  return 'Sonali';
}

void main() {
  print('Start');
  late String name = provideName();
  print('End');
  print('Welcome $name..!');

  /// Without late
  // Start
  // ProvideName() called
  // End

  /// With late
  // Start
  // End
  // ProvideName() called
  // Welcome Sonali..!

  /// Person class object
  Person person = Person('Sonali', 26); // 'name' & 'age' initialize here.
  print(person.intro); // 'intro' initialize here before use.
  // Person class Constructor is Called
  // personClassMethod called
  // My self Sonali and I am 26 years old.
}

// Person class
class Person {
  final String name; // initialize when object create
  final int age; // initialize when object create
  late String intro = personClassMethod(); // initialize when 'intro' invoke using object

  Person(this.name, this.age) {
    print('Person class Constructor is Called');
  }

  String personClassMethod() {
    print('personClassMethod called');
    return 'My self $name and I am $age years old.';
  }
}
