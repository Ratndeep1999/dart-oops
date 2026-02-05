/// Factory Constructor
// A factory constructor does not always create a new object.
// Instead, it controls how and when an object is returned.

// All constructor used earlier are called Generative Constructor


/// Key Differences
// Generative
// --> Always create a new instance of class.

// Factory
// --> May return
//     A new instance.
//     An existing (cached) instance.
//     An instance of a subclass.

/// Commonly used for
// To implement singleton or caching.
// To return different objects based on logic.
// To hide complex object creation logic.

/// Syntax
// class ClassName {
//   factory ClassName() {
//     return ClassName._internal();
//   }

//   factory ClassName.namedConstructor() {
//     return ClassName._internal();
//   }
//
//   ClassName._internal();
// }

/// Rules for creating factory constructors
// 1. Must return an instance of the same class or its subclass.

// 2. Can’t use this keyword inside factory constructor. because
// it does not directly create an object.

// 3. Can be named or unnamed and called like normal constructor.

// 4. It may return: new instance, cached (existing) instance, or subclass instance.

/// Note
// Can initialize 'final' variables nut only through another constructor.
// Cannot use an initializer list directly.
