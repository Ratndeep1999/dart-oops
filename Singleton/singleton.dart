/// Singleton (common design pattern)
// A Singleton ensures that a class has only ONE instance
// and provides a global point of access to that instance.

// In Dart, Singleton is commonly implemented using
// a factory constructor that always returns the same instance.

/// Use case
// Mostly use in class to get single instance of class and use it through-out the application
// eg. Local Database, API/Network service, Logger, App configuration, Cache manager

/// Key-points
// Singleton is instantiated only once. A factory constructor returns the same instance every time.
// All references share the same memory (same hashcode).
// Object creation is controlled inside the class.

/// syntax
class Singleton {
  // Single shared instance (created once)
  static final Singleton _instance = Singleton._internal(); // static variable

  // Factory constructor always returns the same instance
  factory Singleton() {
    return _instance;
  }

  // Private constructor
  Singleton._internal(); // private constructor
}

/// Note
// Singleton._internal() is a private constructor, so it cannot be called from
// outside this library (.dart file)