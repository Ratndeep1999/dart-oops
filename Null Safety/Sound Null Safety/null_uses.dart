/// Null Uses in Dart

void main(){
  List<int?> items = [0, 2, null]; // null safe list

  // i can pass both null or string
  printName('Sonali');
  printName(null);

  // I can pass null values from constructor.
  Person(null);
  Person('Sonali');
}

// null-safe function parameters
void printName(String? name){
  print(name);
}

// null safe class properties
class Person {
  String? name;
  Person(this.name);
}