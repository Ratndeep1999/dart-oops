/// Parameterized Constructor
// Use to initialize instance variable of class.
// Constructor takes parameters, that pass values to class constructor at the time of object creation
// and assign to class fields.

class Bike {
  String? brand;
  int strokeEngine;
  String color;

  Bike({this.brand, required this.strokeEngine, required this.color});

  showData() {
    print('Brand : ${brand ?? 'BMW'}');
    print('Engine Stroke : $brand');
    print('Color : $color');
  }
}

void main() {
  Bike bike = Bike(strokeEngine: 4, color: 'Devils Black');
  bike.showData();
  // Brand : BMW
  // Engine Stroke : null
  // Color : Devils Black
}
