/// Interface:
// In Dart, every class can be used as an interface. An interface
// provides a syntax that a class must follow. It specifies what
// methods and properties a class must implement, without providing
// implementation details.

// We use 'implements' keyword to implement an interface. When a
// class implements an interface, it must override and provide
// implementations for all methods and properties.

// Interfaces help achieve abstraction and loose coupling

/// syntax
class InterfaceName {
  // method and property declarations
}
class ClassName implements InterfaceName {
  // must implement all members of InterfaceName
}

/// Key-Points
// Interface is a contract that defines the capabilities of a class.
// Interfaces can be declared using concrete or abstract classes.
// Using interfaces, Dart supports multiple inheritance of contracts.
// Interfaces are widely used in clean architecture and SOLID principles.