class Human {
  String? name;
  int numOfHands = 2;
  int numOfLegs = 2;

  void eat() => print('Humans eat Vegetables and Fruits');
}

class Male extends Human {
  String? favColor;

  void printData() {
    print('Name : ${super.name}'); // 'super' is used to define super class.
    print('No. of Hands : ${super.numOfHands}');
    print('No. of Legs : ${super.numOfLegs}');
    print('Favourite color : ${favColor}');
  }
}

void main() {
  Male male = Male(); // object of child class
  male.name = 'Ratndeep'; // from parent class
  male.favColor = 'Blue'; // from child class
  male.printData(); // from child class
  // Name : Ratndeep
  // No. of Hands : 2
  // No. of Legs : 2
  // Favourite color : Blue
  male.eat(); // from parent class
  // Humans eat Vegetables and Fruits
}
