
/// Exercise
// Create an interface called Bottle and add a method to it called open().
// Create a class called CokeBottle and implement the bottle and print the message
// "Coke bottle is opened" add a factory constructor and call the open() on the object.

// interface
class Bottle {
  void open() {
    print('Bottle is opened');
  }
}

// implement interface bottle
class CokeBottle implements Bottle {
  static final CokeBottle _instance = CokeBottle._internal();

  factory CokeBottle() {
    return _instance;
  }

  CokeBottle._internal();

  @override
  void open() {
    print('Coke Bottle is opened');
  }
}

void main() {
  CokeBottle cokeBottle1 = CokeBottle();
  print(cokeBottle1.hashCode); //

  CokeBottle cokeBottle2 = CokeBottle();
  print(cokeBottle2.hashCode); //

  CokeBottle cokeBottle3 = CokeBottle();
  print(cokeBottle3.hashCode); //
}
