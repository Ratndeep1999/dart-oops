/// Late with Final

class Person{
  late final String name;

  Person(this.name);
}

void main(){
  Person person = Person('Sonali');
  print('Name: ${person.name}'); // Name: Sonali

  // person.name = 'Ratndeep';
  // Unhandled exception: Field 'name' has already been initialized.
}



