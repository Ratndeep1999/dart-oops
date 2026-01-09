/// NOTE :
/// Problem 1
// We initialize the class fields using method.
// means to create multiple objects inside main i have to call some method everytime
// and if i forget then fields return null values, object get un-initialized.

/// Problem 2
// If i use late keyword then it return run-time exception that is 'Uninitialize'

/// Constructor :
// Unique method to initialize an object, that sets initial values to the object fields.
// This method invoke automatically when an object is create.
// Constructor name should be same as the class name.
// It does not have any return type

/// Syntax
// ClassName(type parameter){
//   this.field = parameter;
// }

// ClassName(type parameter) : field = parameter;

// ClassName(this.field1, this.field2,...);

class Person {
  String? name;
  int? age;

  Person(String name, int age) {
    print('Person constructor call');
    this.name = name;
    this.age = age;
  }
  // Here if i remove '?' from fields then constructor give compile time error
}

class Student {
  String name;
  int age;

  Student(String name, int age) : name = name, age = age {
    print('Student constructor call');
  }
  // Here no need ot write this keyword, & i can left '?'
}

class Men {
  String name;
  int age;

  Men(this.name, this.age) {
    print('Men constructor call');
  }
  // Here, 'this' is use & '?' not used
}

void main() {
  // Person
  Person person = Person('Ratndeep', 26); // Person constructor call

  // Student
  Student student = Student('Sonali', 24); // Student constructor call

  // Men
  Men men = Men('Rahul', 18); // Men constructor call
}
