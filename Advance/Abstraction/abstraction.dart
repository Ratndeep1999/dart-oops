/// Abstraction : fundamental concept of oops
// Abstraction is achieved through the use of abstract classes and interfaces.
// Abstraction means hiding internal implementation of details and showing only what is necessary to the user.
// Use to define behavior of class (abstract) that can be inherited by other classed.
// Abstraction hides implementation details and exposes only essential behavior using abstract classes or interfaces.
// Focus on what an object does, not how it does it.

/// Key-Components
// Abstract class:
// Used to define the behavior of a class that can be inherited by other classes.
// Declared using 'abstract' keyword before class keyword.
// We can not create an object of abstract class.
// Class that cannot be instantiated, only intended to be subclassed.
// It contains both abstract methods (without body), concrete methods (with body), variables & constructors.

// Abstract method:
// Declared only inside abstract class, that do not have body.
// Child must implement abstract methods (extends or implements).
// Supports polymorphism.

// Interfaces (implements):
// In Dart, every class can be used as an interface.
// When we implement an interface, we must implement all the properties and methods defined in the interface.
// Keyword implements is used to implement an interface.
// A class can implement multiple interfaces, allowing for flexible design.

/// syntax
// abstract class ClassName {
//   type abstractMethod();
//   type concreteMethod(){
//     print('This is concrete method');
//   }
// }

/// Real life examples
// ATM Machine:
// We see: Withdraw, Deposit, Check Balance
// We don’t see: database queries, network calls, security logic

/// Use Abstraction in Flutter
// API layers
// Repository pattern
// Payment gateways
// Database switching
// Platform-specific logic
// Clean Architecture

/// Note: Not compulsory to implement concrete method of abstract class.