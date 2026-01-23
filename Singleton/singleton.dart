/// Singleton (common design pattern)
// Class can have only one instance and provides a global point of access to it.
// Factory constructor use to defin singleton pattern that always return same instance.

/// Use case
// Mostly use in class to get single instance of class and use it through-out the application
// eg. Local Database

/// Key-points
// Singleton pattern instantiated once, and provide factory constructor to get same instance of class everytime.
// If singleton is use then every object has same hashcode.
// It return instance of same class or sub-class.

/// syntax
class Singleton {
  static final Singleton _instance = Singleton._internal(); // static variable

  // factory constructor
  factory Singleton() {
    return _instance;
  }

  Singleton._internal(); // private constructor
}

/// Note: Singleton._internal() is private constructor so, it cannot be called from
/// outside the library (.dart)