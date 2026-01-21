/// 'On' keyword

/// abstract class Animal
abstract class Animal {
  String name;
  double speed;

  Animal(this.name, this.speed);

  void run();
}

/// Mixin inherit abstract class
mixin CanRun on Animal {
  @override
  void run() {
    print('$name is running at speed $speed');
  }
}

/// class 'Dog' extends 'Animal' with 'CanRun'
class Dog extends Animal with CanRun {
  Dog(super.name, super.speed);
}

void main(){
  Dog dog = Dog('My Dog', 25);
  dog.run(); // My Dog is running at speed 25.0
}