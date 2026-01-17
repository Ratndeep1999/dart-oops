/// Interface:
// In Dart, every class is implicit interface.
// Interface provides a syntax that a class must follow.
// We can use concrete or abstract class to declare an interface.
// When we use implement an interface we must implement all properties
// and methods that defines in the interface.
// 'implements' keyword use to implement interface.
// An Interface specifies a set of methods that a class must implement
// without providing any implementation details.

/// syntax
class InterfaceName {
  // body
}
class ClassName implements InterfaceName {
  // body
}

/// Key-Points
// Interface is a contract that defines the capabilities of a class.
// We can use abstract keyword to declare an interface.
// Using interface, I can achieve multiple inheritance.
// Interface Use to achieve abstraction.