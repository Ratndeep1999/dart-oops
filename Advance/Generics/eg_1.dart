// Base class
// Defines common behavior for all animals
class Animal {
  void speak() {
    print('Animal sound');
  }
}

// Dog class extends Animal
// Overrides the speak() with Dog-specific behavior
class Dog extends Animal {
  @override
  void speak() {
    print('Woof..');
  }
}

// Cat class extends Animal
// Overrides the speak() with Cat-specific behavior
class Cat extends Animal {
  @override
  void speak() {
    print('Meow..');
  }
}

// Generic class with type restriction
// T must be Animal or any subclasses of Animal
class AnimalShelter<T extends Animal> {
  // Generic variable of type T
  // Holds an instance of type T
  T animal;

  // Constructor accepts only Animal-type objects
  AnimalShelter(this.animal);

  // Method that calls speak() on the animal
  // Demonstrates runtime polymorphism
  void letAnimalSpeak() {
    animal.speak(); // Calls the overridden method of Dog or Cat at runtime
  }
}

void main() {
  // Creating AnimalShelter with Dog
  // T is resolved as Dog
  AnimalShelter<Dog> dogShelter = AnimalShelter<Dog>(Dog());
  dogShelter.letAnimalSpeak(); // Woof..

  // Creating AnimalShelter with Cat
  // T is resolved as Cat
  AnimalShelter<Cat> catShelter = AnimalShelter<Cat>(Cat());
  catShelter.letAnimalSpeak(); // Meow..
}
