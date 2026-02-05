/// Polymorphism
// Poly means 'many' and 'morph' means forms.
// It is the ability of an object to take multiple forms.
// Polymorphism allows objects of different classes to be treated as
// objects of a common parent class, while each object can behave differently.

/// Key Idea
// Same method name, different behavior.

/// Explanation
// Polymorphism is achieved when a child class overrides a method of
// its parent class to provide its own specific implementation.

// The method to be executed is decided at runtime, based on the
// object type, not the reference type.

/// Note:
// Polymorphism allows a parent class reference to call different
// implementations of the same method. based on the child object at runtime.

/// Syntax
// class ParentClass {
//   void functionName(){}
// }

// class ChildClass extends ParentClass {
//   @override
//   void functionName(){}
// }

/// Key Concepts of Polymorphism

/// 1. Method Overriding:
// A child class provides its own implementation of a method
// that already exists in the parent class.
// --> Method signature must be the same.
// --> Achieved using inheritance or interfaces.
// --> use @override annotation.

/// 2. Method Overloading:
// Dart does not support traditional method overloading
// (same method name with different parameters).
// Alternative: Optional, Named parameters or different method names.
// Dart achieves similar behavior using flexible parameters, not true method overloading.

/// 3. Dynamic Typing:
// A parent class reference can point to different child class objects.
// The method is resolved at runtime. This enables runtime polymorphism.
// eg. Animal animal = Dog();
//     animal.sound();   ...Dog's sound is called


/// Type of Polymorphism:
// 1. Compile-time Polymorphism (Method Overriding)
// 2. Runtime Polymorphism (Most important)
// Dart supports Runtime Polymorphism only. It is achieved using method overriding.

/// What does !
// It allows code written for a parent class to work with
// any derived class object dynamically.