/// Compile time Polymorphism (Static Polymorphism)
// Dart does not support true compile-time polymorphism because
// it does not allow method overloading.
// ( same method name with different parameter lists )

// Dart provides similar behavior using:
// Optional parameters
// Named parameters
// Default values

// eg. (Alternate to overloading in dart)
// void log(String message, {int? level}) {}

// Note
// Method overriding is not compile-time polymorphism.

/// Dart supports Runtime Polymorphism only.
// Achieved using inheritance + method overriding + interface / abstract classes.
