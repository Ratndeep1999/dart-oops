/// Single Inheritance
// A class can inherit from only one class. It is the simplest
// form of inheritance.

class Vehicle {
  int wheels = 4;

  void vehicleRun() => print('Vehicle run on $wheels wheels.');
}

class Car extends Vehicle {
  @override  // override parent class method
  void vehicleRun() {
    super.vehicleRun();
    print('Car run on $wheels wheels.');
  }
}

void main() {
  Car car = Car();
  car.vehicleRun();
  // Vehicle run on 4 wheels.
  // Car run on 4 wheels.
}
