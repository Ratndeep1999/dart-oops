/// Runtime Polymorphism
// Runtime polymorphism occurs when the method to be executed
// is determined at runtime, not at compile time.

// It is achieved through method overriding, where a child (derived)
// class provides its own implementation of a method defined
// in a parent (base) class or interface.

// The method call depends on the actual object type,
// not the reference type.

/// Key Idea
// One interface / parent class --> multiple implementations

/// Works like
// A parent class reference points to a child class object.
// The same method is called.
// The child's overridden method is executed at runtime.

/// Uses widely in
// Flutter Framework (Widgets, RenderObjects)
// Clean Architecture (Repository, UseCase, Services)
// SOLID principles (OCP, DIP)