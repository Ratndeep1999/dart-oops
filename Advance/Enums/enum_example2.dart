enum Gender { Male, Female, Other }

class Person {
  String firstName, lastName;
  Gender gender;

  Person({
    required this.firstName,
    required this.lastName,
    required this.gender,
  });

  void showDetails() {
    print('First name: ${this.firstName}');
    print('Last name: ${lastName}');
    print('Gender: ${gender}');
  }
}

void main() {
  Person p1 = Person(
    firstName: 'Ratndeep',
    lastName: 'Chandankhede',
    gender: Gender.Male,
  );
  p1.showDetails();
  // First name: Ratndeep
  // Last name: Chandankhede
  // Gender: Gender.Male

  Person p2 = Person(
    firstName: 'Sonali',
    lastName: 'KumKum',
    gender: Gender.Female,
  );
  p2.showDetails();
  // First name: Sonali
  // Last name: KumKum
  // Gender: Gender.Female
}
