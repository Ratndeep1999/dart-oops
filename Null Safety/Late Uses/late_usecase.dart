/// Late Use case
// Late keyword use to declare a variable that will be initialized before use.
// Declaring a non-nullable variable that is not initialized at the time of declaration.

/// What 'late' tell to the Dart
// Don't assign that variable until to get value.
// Assign value later.
// We sure that variable has value before use it.

void main(){
  late String name;
  // print(name); unassigned
  name = 'Sonali';
  print(name); // Sonali

  Person person = Person();
  person.name = 'Sonali'; // variable initialize here
  person.welcome(); // Welcome Sonali..!
}

// Class
class Person {
  late String name;

  void welcome(){
    print('Welcome $name..!');
  }
}