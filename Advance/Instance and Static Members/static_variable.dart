/// Static Variable
// Class level variable declare with static keyword.
// Only one copy exists, shared across all instances of the class.
// It stores data common to the class, not individual objects.
// Initialized once when the class is loaded into memory.
// Accessed using the class name, not object reference.

class Vehicle {
  String color;
  String brand;

  Vehicle(this.color, this.brand);
}

class Car extends Vehicle {
  static int numOfWheels = 4;

  Car(String color, String brand) : super(color, brand);

  void carDetails() {
    print('Brand: $brand');
    print('Color: $color');
    // print('No. of Wheels: $numOfWheels'); // access directly
  }
}

void main() {
  Car bmw = Car('Black', 'BMW');
  bmw.carDetails();
  // Brand: BMW
  // Color: Black
  print('No. of Wheels: ${Car.numOfWheels}'); // No. of Wheels: 4
  print('Hash Code: ${Car.numOfWheels.hashCode}'); // Hash Code: 46404

  Car tata = Car('Red', 'TATA');
  tata.carDetails();
  // Brand: TATA
  // Color: Red
  print('No. of Wheels: ${Car.numOfWheels}'); // No. of Wheels: 4
  print('Hash Code: ${Car.numOfWheels.hashCode}'); // Hash Code: 46404
}
