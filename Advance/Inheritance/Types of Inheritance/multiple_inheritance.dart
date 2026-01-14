/// Multiple Inheritance
// Dart doesn't support multiple inheritance.
// It all to inherit from more than one parent class.
// Helps to avoid complexity.

/// I can achieve similar behaviour using 'mixins'

mixin CanSwim {
  swim() => print('Swimming');
}

mixin CanFly {
  fly() => print('Flying');
}

class Duck with CanSwim, CanFly {
  quack() => print('Quack! Quack!');
}

void main(){
  Duck duck = Duck();
  duck.swim();
  duck.fly();
  duck.quack();
  // Swimming
  // Flying
  // Quack! Quack!
}
