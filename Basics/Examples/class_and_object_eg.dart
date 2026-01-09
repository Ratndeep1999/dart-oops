/// Car
class Car {
  String brand;
  int numOfWheels = 4;
  String color = 'black';
  bool isKeysOn;

  Car(this.brand, this.numOfWheels, this.color, this.isKeysOn);

  startEngine() {
    isKeysOn
        ? print('Keys putted now start the engine')
        : print('Keys not putted.');
  }

  void engineStart() => print('Car Engine Start');

  void carRun() {
    print('$color car is running on $numOfWheels wheels');
  }
}

/// Person
class Person {
  String name;
  int age;
  bool isMarried;

  Person(this.name, this.age, this.isMarried);

  personIntro() => print('Hello my Name is $name and i am $age years old');

  isPersonMarried() {
    isMarried = age > 21;
    isMarried ? 'Yes I am Married' : 'No, I am still Single';
  }
}

/// Area
class Area {
  double? length;
  double? breadth;

  calculateArea() => length! * breadth!;
}
