/// Late Use case
// 'late' is used to declare a non-nullable variable that will
// be initialized later, but before it is used.

/// What 'late' tell to the Dart
// "Trust me — this variable WILL be assigned before access."
// Dart skips null checks at compile time but performs a runtime check instead.

class Person {
  late String name;

  void welcome() {
    print('Welcome $name..!');
  }
}

void main() {
  late String name;
  // print(name); unassigned
  name = 'Sonali';
  print(name); // Sonali

  Person person = Person();
  person.name = 'Sonali'; // variable initialize here
  person.welcome(); // Welcome Sonali..!
}
