class Student {
  String? _firstName;
  String? _lastName;
  int? _age;

  // String get fullName => this._firstName + " " + this._lastName;
  // String concatenation cant perform on null parameters.
  // Solution1 : String get fullName => this._firstName! + ' ' + this._lastName!;
  // Solution2 : String get fullName => (this._firstName ?? 'No') + ' ' + (this._lastName ?? 'Name');

  String get fullName {
    if (this._firstName == null || this._lastName == null) {
      return "No Name";
    } else {
      return "$_firstName $_lastName";
    }
  }
  int get age => this._age ?? 0;

  set firstName(String firstName) => this._firstName = firstName;
  set lastName(String lastName) => this._firstName = lastName;
  set age(int age) {
    if (age < 0) {
      throw Exception('Age can\'t be less than 0');
    }
    _age = age;
  }
}

void main() {
  Student s1 = Student();
  print('Full name: ${s1.fullName}');
  print('Age: ${s1.age}');
  // Full name: No Name
  // Age: 0

  s1.firstName = 'Sonali';
  s1.lastName = 'KanKan';
  s1.age = 26;
  String fullName = s1.fullName;
  print('Student Full Name is  $fullName and age is ${s1.age}');
  // Student Full Name is  No Name and age is 26

  try {
    s1.age = -2;
  } catch (e) {
    print(e); // Exception: Age can't be less than 0
  }

  print('Student Full Name is  $fullName and age is ${s1.age}');
  // Student Full Name is  No Name and age is 26
}