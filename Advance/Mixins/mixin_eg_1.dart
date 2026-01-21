/// mixin code inherit

mixin PetrolVarient {
  void petrolVarient() {
    print('This is an Petrol Varient..!');
  }
}

mixin ElectricVarient {
  void electricVarient() {
    print('This is an Electric Varient..!');
  }
}

class Car with PetrolVarient, ElectricVarient {
  void bothVarient() {
    print('Car has both Petrol and Electric Varient..!');
  }
}

void main() {
  Car car = Car();
  car.petrolVarient(); // This is an Petrol Varient..!
  car.electricVarient(); // This is an Electric Varient..!
  car.bothVarient(); // Car has both Petrol and Electric Varient..!
}
