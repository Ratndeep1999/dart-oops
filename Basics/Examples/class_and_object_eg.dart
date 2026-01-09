/// Student class
class Student {
  String? name;
  int? age;
  bool? isPassed;

  displayResult() {
    print('Student name: $name');
    print('Student age: $age');
    print('Result: ${isPassed! ? 'Pass' : 'Fail'}');
  }
}

/// Person class
class Person {
  String? name;
  int? age;

  void setPersonData(String personName, int personAge) {
    name = personName;
    age = personAge;
  }

  void personIntro() => print('Hello my Name is $name and i am $age years old');
}

/// Car class
class Car {
  String? brand;
  bool? isKeyOn;
  int numOfWheels = 4;
  String color = 'Black';

  void startEngine({bool? isKeyOn}) {
    this.isKeyOn = isKeyOn;
    String engine = (isKeyOn ?? false)
        ? 'Engine Started vroom..vroom..'
        : 'Keys off.';
    print(engine);
  }

  void carRun() {
    print('$brand $color $numOfWheels whiller car is running on road.');
  }
}

/// Rectangle class
class Rectangle {
  double? length;
  double? breadth;

  calculateArea() => length! * breadth!;
}

void main() {
  /// Student1 object
  Student student1 = Student();
  student1.name = 'Ratndeep';
  student1.age = 26;
  student1.isPassed = false;
  student1.displayResult();
  // Student name: Ratndeep
  // Student age: 26
  // Result: Fail

  /// Student2 object
  Student student2 = Student();
  student2.name = 'Sonali';
  student2.age = 24;
  student2.isPassed = true;
  student2.displayResult();
  // Student name: Sonali
  // Student age: 24
  // Result: Pass

  /// Person1 object
  Person p1 = Person();
  p1.setPersonData('Ratndeep', 26);
  p1.personIntro(); // Hello my Name is Ratndeep and i am 26 years old

  /// Car1 object
  Car car1 = Car();
  car1.brand = 'BMW';
  car1.startEngine(isKeyOn: true);
  car1.carRun();
  // Engine Started vroom..vroom..
  // BMW Black 4 whiller car is running on road.

  /// Car2 object
  Car car2 = Car();
  car2.brand = 'Toyota';
  car2.color = 'White';
  car2.isKeyOn = false;
  car2.startEngine(); // Keys off.
  car2.carRun(); // Toyota White 4 whiller car is running on road.

  /// Rectangle object
  Rectangle rectangle = Rectangle();
  rectangle.length = 5;
  rectangle.breadth = 10;
  print('Area of rectangle ${rectangle.calculateArea()}'); // Area of rectangle 50.0
}
