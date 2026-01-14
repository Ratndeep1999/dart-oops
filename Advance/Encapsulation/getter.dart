/// Getter
// Getter is use to get/access/read values of class private properties.
// It provide indirect access of class private properties.

/// Syntax
// returnType get propertyName{
//   return _propertyName;
// }

/// Person class
class Person {
  String _firstName; // Non nullable, because constructor is in use
  String _lastName;
  int _age;

  Person({
    required String firstName,
    required String lastName,
    required int age,
  }) : _firstName = firstName,
       _lastName = lastName,
       _age = age;

  // getter's
  String get fullName => '$_firstName $_lastName';
  int get age => _age;
}

/// Map Getter
class Student{
  String _name;
  int _age;
  String _gender;

  Student(this._name, this._age, this._gender);

  // getters
 String get name => _name;
 int get age => _age;
 String get gender => _gender;

 Map<String, dynamic> get studentMap{
   return {
     'Name': _name,
     'Age': _age,
     'Gender': _gender,
   };
 }

}

void main() {
  /// Person object
  Person person1 = Person(
    firstName: 'Ratndeep',
    lastName: 'Chandankhede',
    age: 26,
  );

  String fullName = person1.fullName;
  print('Full name: $fullName'); // Full name: Ratndeep Chandankhede
  print('Age: ${person1.age}'); // Age: 26

  /// Student object
  Student s1 = Student('Ratndeep', 26, 'Male');
  print('Name: ${s1.name}'); // Name: Ratndeep
  print('Age: ${s1.studentMap}'); // Age: {Name: Ratndeep, Age: 26, Gender: Male}
  print('Age: ${s1.studentMap['Age']}'); // Age: 26
}
