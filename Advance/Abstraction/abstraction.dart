/// Abstraction : fundamental concept of oops
// Abstraction means hiding implementation details and showing
// only essential features to the user. Focuses on what an
// object does, not how it does it.

// In dart, abstraction is achieved using
// Abstract classes and Interfaces (implements).

/// Key-Components

// Abstract class:
// Declared using the 'abstract' keyword.
// Cannot be instantiated directly.
// We can not create an object of abstract class.
// Intended to be subclassed.
// It contains both abstract methods (without body), concrete methods (with body), variables & constructors.

// Abstract method:
// Declared inside abstract classes or interfaces.
// Does not have a method body.
// Child classes must implement abstract methods.
// Supports polymorphism.

// Interfaces (implements):
// In Dart, every class can act as an interface.
// 'implements' forces the child class to implement all methods and properties.
// A class can implement multiple interfaces.

/// syntax
// abstract class ClassName {
//   type abstractMethod();
//   type concreteMethod(){
//     print('This is concrete method');
//   }
// }

/// Real life examples
// ATM Machine:
// We see: Withdraw(), Deposit(), Check Balance()
// Hidden: database logic, networking, security logic.

/// Use Abstraction in Flutter
// API layers
// Repository pattern
// Payment gateways
// Database switching
// Platform-specific logic
// Clean Architecture

// Note
// Concrete methods are optional to override.
// Abstract methods must be implemented.