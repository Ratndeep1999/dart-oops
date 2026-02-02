// Base class
// This defines common behavior for all animals
class Animal {
  void speak() {
    print('Animal sound');
  }
}

// Dog class extends Animal
// Overrides the speak() method with its own behavior
class Dog extends Animal {
  @override
  void speak() {
    print('Woof..');
  }
}

// Cat class extends Animal
// Overrides the speak() method with its own behavior
class Cat extends Animal {
  @override
  void speak() {
    print('Meow..');
  }
}

// Generic class with type restriction
// T must be of type Animal or its subclasses
class AnimalShelter<T extends Animal> {
  // Generic variable of type T
  // Holds any object that extends Animal
  T animal;

  // Constructor receives an animal of type T
  AnimalShelter(this.animal);

  // Method that calls speak() on the animal
  // Runtime polymorphism happens here
  void letAnimalSpeak() {
    animal.speak(); // Calls Dog's or Cat's speak() at runtime
  }
}

void main() {
  // Creating AnimalShelter for Dog
  // T is resolved as Dog
  AnimalShelter<Dog> dogShelter = AnimalShelter<Dog>(Dog());
  dogShelter.letAnimalSpeak(); // Output: Woof..

  // Creating AnimalShelter for Cat
  // T is resolved as Cat
  AnimalShelter<Cat> catShelter = AnimalShelter<Cat>(Cat());
  catShelter.letAnimalSpeak(); // Output: Meow..
}
