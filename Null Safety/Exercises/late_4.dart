void main(){
  Person person = Person();
  person.setName('Sonali');
  print(person.name);
}

class Person {
  late String _name;

  void setName(String name){
    _name = name;
  }

  String get name => _name;
}