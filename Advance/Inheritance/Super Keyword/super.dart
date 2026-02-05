/// Super
// 'super' refers to the immediate parent class members.
// It is used to access parent class properties, methods, and constructors.

class Vehicle {
  int numOfWheels = 4;
  String color = 'Black';

  void engineStart() => print('Vehicle Engine Start!');
}

class Car extends Vehicle {
  int numOfWheels = 6;
  String color = 'White';

  void sunRuff() {
    print('Car Sun-Ruff opens..');
    super.engineStart();
  }
}

class BMW extends Car {
  int numOfWheels = 4;
  String color = 'Devil Black';

  void lights() {
    print('BMW headlights on..');
    super.sunRuff();
  }

  displayInfo() {
    print('Car NumOfWheels: ${super.numOfWheels}');
    print('Car Color: ${super.color}');
    print('BMW NumOfWheels: ${this.numOfWheels}');
    print('BMW color: ${this.color}');
  }
}

void main() {
  BMW bmw = BMW();

  bmw.lights();
  // BMW headlights on..
  // Car Sun-Ruff opens..
  // Vehicle Engine Start!

  bmw.displayInfo();
  // Car NumOfWheels: 6
  // Car Color: White
  // BMW NumOfWheels: 4
  // BMW color: Devil Black

  // If both class parameters is same then it get only object type class members.
  print('BMW No. of Wheels: ${bmw.numOfWheels}'); // BMW No. of Wheels: 4
  print('BMW Color: ${bmw.color}'); // BMW Color: Devil Black
}

/// Summary
// super.parameter
// super.method(argument)
// Constructor(type parame1, type parame2) : super(parame1-As-Argu, parame2-As-Argu){}
// Constructor(type parame1, type parame2) : super(parame1-As-Argu, argument)
// Constructor({required type parame1, required type parame2}) : super (parame1: parame1, parame2: parame2)
// Constructor() : super.named()