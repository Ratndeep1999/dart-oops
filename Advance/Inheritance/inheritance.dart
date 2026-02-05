/// Inheritance: fundamental concept of oop's
// Inheritance is the process in which one class acquires the properties
// and methods of another class. in given class. The 'extends' keyword is
// used to inherit a class. Inheritance allows code reuse and logical hierarchy.

/// Inheritance IS-A relation
// Inheritance follows IS-A relationship
// Student IS A Person (Student = child, Person = parent)
// Truck IS A Vehicle (Truck = child, Vehicle = parent)
// Cow IS A Animal (Cow = child, Animal = parent)

/// syntax
// class SubClassName extends SuperClassName {
//   // body
// }

/// Key terminology

// Base / Parent / Super class:
// class whose properties & methods are inherited by another class(child).

// Derive / Child / Sub class:
// class that inherits properties & methods from parent class,
// it can add new members or override existing ones.

/// Method Overriding:
// When a child class provides its own implementation of a method
// already defined in the parent class. In Dart, @override annotation is used.

/// 'Super' keyword:
// super is used to refer to the immediate parent class
// and access its constructor or methods.

/// Note
// Dart does not support multiple inheritance using classes. A class
// cannot extend more than one class. However, Dart supports multiple
// inheritance using mixins.

/// Benefits of Inheritance
// Code reusability.
// Better program structure.
// Clean and maintainable code.
// Saves development and maintenance time.