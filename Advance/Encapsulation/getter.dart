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

  Person({String? firstName, int? age}) : _firstName = firstName, _age = age;

  // getter's
  String? get firstName => _firstName;
  int? get age => _age;
}

void main() {
  Person person1 = Person();

  print('Name: ${person1.firstName} ');
  print('Age: ${person1.age} ');
  // Name: null
  // Age: null

  Person person2 = Person(firstName: 'Sonali', age: 26);
  print('Name: ${person2.firstName} ');
  print('Age: ${person2.age} ');
  // Name: Sonali
  // Age: 26
}
