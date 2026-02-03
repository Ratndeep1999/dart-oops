class Person {
  String firstName;
  String lastName;

  // Constructor
  Person(this.firstName, this.lastName);

  // factory constructor with fromMap
  factory Person.fromMap(Map<String, Object> map) {
    final firstName = map["firstName"] as String;
    final lastName = map["lastName"] as String;
    return Person(firstName, lastName);
  }
}

void main() {
  // person object from generative constructor
  final person1 = Person("John", "Doe");
  print("Person: ${person1.firstName} ${person1.lastName}"); // Person: John Doe

  // person object from fromMap()
  final person2 = Person.fromMap({"firstName": "Harry", "lastName": "Potter"});
  print("Full name: ${person2.firstName} ${person2.lastName}"); // Full name: Harry Potter
}
