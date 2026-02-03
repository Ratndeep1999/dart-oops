class Person {
  // final field
  final String name;

  // private constructor
  Person._internal(this.name);

  // static _cache field
  static final Map<String, Person> _cache = {};

  // factory constructor that return same object
  factory Person(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name]!;
    } else {
      final person = Person._internal(name);
      _cache[name] = person;
      return person;
    }
  }
}

void main() {
  final person1 = Person("John");
  final person2 = Person("Harry");
  final person3 = Person("John");

  print("Person1 name: ${person1.name} with hashcode: ${person1.hashCode}"); //
  print("Person2 name: ${person2.name} with hashcode: ${person2.hashCode}"); //
  print("Person3 name: ${person3.name} with hashcode: ${person3.hashCode}"); //

  // Person1 name: John with hashcode: 397704159
  // Person2 name: Harry with hashcode: 85162298
  // Person3 name: John with hashcode: 397704159
}
