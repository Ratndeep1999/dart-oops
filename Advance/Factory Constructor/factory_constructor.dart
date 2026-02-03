/// Factory Constructor
// All constructor that i used previously are called as Generative Constructor

/// What is Factory Constructor
// A factory constructor does NOT always create a new object.
// Instead, it controls how and when an object is created.

/// Key Differences
// Generative
// --> Always create a new instance of class.

// Factory
// --> It can return
//     A new instance.
//     An existing (cached) instance.
//     An instance of a subclass.

/// Mostly used for
// To implement singleton or caching.
// To return different objects based on logic.
// To control object creation.
// To hide complex initialization logic.

/// Syntax
// class ClassName {
//   factory ClassName() {
//     return ClassName Instance
//   }

//   factory ClassName.namedConstructor() {
//     return ClassName instance
//   }
// }

/// Rules for creating factory constructors
// 1. A factory constructor must return an instance of the same class
// or one of its subclasses.

// 2. Can’t use this keyword inside factory constructor. because
// it does not directly create an object.

// 3. It can be named or unnamed and called like normal constructor.

// 4. It may return: new instance, cached (existing) instance,
// or subclass instance.

/// Note
// With a factory, we can't initialize a final variables
// using complex logic that can’t be handled in the initializer list.
