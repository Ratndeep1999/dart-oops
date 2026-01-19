/// Some key-points of interface
// Any class can act as an interface.
// Constructors DO exist in that class but when we implements a class:
// Constructor is NOT inherited and Variables are NOT inherited.
// Only the contract is enforced means they are ignored by implements.

/// Then WHY are variables allowed in an interface?
abstract class Animal {
  int get numberOfLegs;
}

// Here,
// Not a stored variable, It is a property contract.
// Variables in interfaces are NOT state.
// Interface variables define WHAT data must be exposed. (like A promise, shape, public API)

// How Dart treats interface variables internally
// we write :
// abstract class User {
//   String name;
// }

// Dart actually treats :
abstract class User {
  String get name;

  set name(String value);
}

/// Why constructors are NOT allowed in interfaces (conceptually)
// Constructors : Initialize state, Allocate memory and Define how object is created.
// Interfaces: Do NOT care how object is created & about internal state
// only care about what must exist

// So It means allowing constructors in an interface would:
// Break abstraction
// Leak implementation details

/// Interface = Structure + Behavior (NOT only structure)
// “Is interface structure only?” NO
// Interface defines:
// Behavior --> methods
// Data access rules --> getters/setters
// NOT Defines: Storage, Initialization, & Business logic.

// Real Flutter Example (ADVANCED)
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
// Interface defines what?
// Implementation defines how?
// Constructor exists only in implementation

// This is how repositories, entities, and domain layers are written in Flutter.
/// This is enterprise Flutter architecture.
