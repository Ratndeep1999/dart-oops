/// Null with class properties

class Person {
  String? name;
  String? profession;

  Person({this.name, this.profession});

  void printData(){
    print('Name: ${name ?? 'Unknown'}');
    print('Profession: ${profession ?? 'Not Given'}');
  }
}

void main(){
  Person person1 = Person(name: 'Sonali', profession: 'Product manager');
  person1.printData();
  // Name: Sonali
  // Profession: Product manager

  Person person2 = Person(name: 'Ratndeep', profession: null);
  person2.printData();
  // Name: Ratndeep
  // Profession: Not Given

  Person person3 = Person(name: null, profession: 'Software Developer');
  person3.printData();
  // Name: Unknown
  // Profession: Software Developer

  Person person4 = Person();
  person4.printData();
  // Name: Unknown
  // Profession: Not Given
}

/// Note: most of the common error caused due to null.