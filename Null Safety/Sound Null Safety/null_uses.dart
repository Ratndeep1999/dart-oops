/// Null Uses in Dart

void main(){

  // Nullable list that can store null values (null safe)
  List<int?> items = [0, 2, null];

  // Nullable function parameters that accepts both String & null
  printName('Sonali');
  printName(null);

  // Nullable class property → constructor can accept null
  Person(null);
  Person('Sonali');
}

// null-safe function parameters
void printName(String? name){
  print(name);
}

// null-safe class properties
class Person {
  String? name;

  Person(this.name);
}