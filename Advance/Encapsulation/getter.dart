/// Getter
// Getter is use to get/access/read values of class private properties.
// It provide indirect access of class private properties.

/// Syntax
// returnType get propertyName{
//   return _propertyName;
// }

/// Getter only
class Person {
  String? _firstName; // No constructor or late so it must be nullable.
  int? _age;

  // setter's
  set firstName(String firstName) => _firstName = firstName;
  set age(int age) => _age = age;

  // getter's
  String? get firstName => _firstName;
  int? get age => _age;
}

void main() {
  Person person = Person();
  person.firstName = 'Sonali';
  person.age = 26;

  print('Name: ${person.firstName} ');
  print('Age: ${person.age} ');
  // Name: Sonali
  // Age: 26
}
