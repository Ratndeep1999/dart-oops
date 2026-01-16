/// Abstract class:
// Abstract use to define behavior of a class that can be inherited by other classes

/// Abstract method:
// A method without body, It is just a structure of sub-class members.

// Abstract class
abstract class Vehicle {
  // abstract method
  void start();
  void stop();
}

// sub-class1
class Car extends Vehicle {
  @override
  void start() {
    print('Car Start..!');
  }

  @override
  void stop() {
    print('Car Stop..!');
  }
}

// sub-class2
class Bus extends Vehicle {
  @override
  void start() {
    print('Bus Start..!');
  }

  @override
  void stop() {
    print('Bus Stop..!');
  }
}


void main(){
  Car car = Car();
  car.start(); // Car start..!
  car.stop(); // Car Stop..!

  Bus bus = Bus();
  bus.start(); // Bus Start..!
  bus.stop(); // Bus Stop..!
}