/// Multiple Inheritance
// Dart doesn't support multiple inheritance using classes.
// Helps to avoid complexity (Diamond problem). Similar behavior
// can be achieved using mixins.

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
