/// key-points of interface
// Any class can act as an interface. when a class is used with 'implements'.
// Constructors and Variables (state) are not inherited, only method and property


/// Why variables are allowed in interfaces ?

// They are not real stored variables.
// They define a contract for data access.

// Example
abstract class Animal {
  int get numberOfLegs;
}

// This does not store data. It only promises that any implementing class
// must expose 'numberOfLegs'.

/// How Dart treats interface variables internally
abstract class User {
  String get name;

  set name(String value);
}
// This means
// --> Interface defines WHAT data must be available
// --> Implementation decides HOW data is stored

/// Why constructors are NOT allowed in interfaces (conceptually)

// Constructors : Initialize state, Allocate memory and Define how object is created.

// Interfaces: Do not care how object is created & about internal state
// only care about what must exist.

// So It means allowing constructors in an interface would Break abstraction and Leak implementation details

/// Interface = Structure + Behavior (NOT only structure)
// “Is interface structure only?” no, Interface defines:
// Behavior --> methods
// Data access rules --> getters / setters
// Not Defines: Storage, Initialization, & Business logic.

/// Real Flutter Example (ADVANCED)

// Domain Layer:
abstract class UserEntity {
  String get id; // an abstract class as an interface, use getters.
  String get name;
}

// Data Layer:
class FirebaseUserModel implements UserEntity {
  @override
  final String id;

  @override
  final String name;

  FirebaseUserModel({required this.id, required this.name});
}

/// Note:
// Interface defines what ?
// Implementation defines how ?
// Constructor exists only in implementation

// This is how repositories, entities, and domain layers are written in Flutter.
// This is enterprise Flutter architecture.
