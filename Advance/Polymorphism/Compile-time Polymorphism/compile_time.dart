/// Compile time Polymorphism (Static Polymorphism)
// Dart does not support true compile-time polymorphism because
// it does not allow method overloading.
// (having two functions with the exact same name but different signatures).

// Dart provides similar behavior using:
// Optional parameters
// Named parameters
// Default values

// eg. (Alternate to overloading in dart)
// void log(String message, {int? level}) {}

/// Compile-time polymorphism
// Achieved using inheritance + overridden methods.
// Polymorphism in dart is primarily runtime-based using
// method overriding and interface / abstract classes.
