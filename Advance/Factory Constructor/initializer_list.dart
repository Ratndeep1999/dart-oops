/// Initializer List
// It is a special place of constructor where we initialize instance
// variable before the constructor body runs.

// It is written after the constructor signature and before the constructor
// body, using :

/// Syntax
// Person(String name, int age)
//     : name = name, age = age { constructor body }

/// Why we use
// 1. To initialize final variables
// final variable must be initialize before the constructor body runs.
class User {
  final String id;

  User(String id) : id = id;
}

// 2. To perform simple logic during initialization
class Rectangle {
  final int area;

  Rectangle(int length, int width) : area = length * width;
}

// 3. To initialize variables before calling super()
class Animal {
  final String type;

  Animal(this.type);
}

class Dog extends Animal {
  final String breed;

  Dog(String breed) : breed = breed, super('Dog');
}
