/// Polymorphism by method overriding

/// Parent class
class Animal {
  void sound() {
    print('Animal makes a sound');
  }
}

/// Child class
class Dog extends Animal {
  @override
  void sound() {
    print('Dog barks');
  }
}

/// Child class
class Cat extends Animal {
  @override
  void sound() {
    print('Cat meows');
  }
}

/// Dynamic method resolution
// Calls the appropriate sound method based in the object type.
void makeSound(Animal animal) {
  animal.sound();
}

void main() {
  Animal myDog = Dog();
  Animal myCat = Cat();
  Animal animal = Animal();

  makeSound(animal); // Animal makes a sound
  makeSound(myDog); // Dog barks
  makeSound(myCat); // Cat meows
}
