/// Mixins
// Mixins are used to share common code across multiple classes.
// They allow code reuse without using inheritance. A class can use multiple mixins.

/// Keywords used with mixins
// mixin --> to declare a mixin
// with --> to apply mixins to a class
// on --> to restrict which classes can use the mixin

/// Key-points
// Mixin has no constructor, Can't be instantiated means No object.
// Use to share behavior across unrelated classes.
// A class can use multiple mixins.
// Mixin methods can be overridden by the class.
// Mixins cannot extend other classes (but can use 'on').

/// syntax
// mixin Mixin1 {
//   code
// }

// mixin Mixin2 {
//   code
// }

// class ClassName with Mixin1, Mixin2 {
//   code
// }

/// 'on' keyword
// Used to restrict a mixin to be applied only to specific classes.
// mixin CanFly on Bird {
//   void fly() => print('Flying');
// }

/// With
// Used to apply one or more mixins to a class.
// class Duck extends Bird with CanFly {}

/// What is allowed in mixins
// Instance and Static variables.
// Concrete, abstract and static methods.
// Multiple mixins ina single class

/// What is not allowed for mixins
// Constructors
// Creating objects of mixins
// Extending other classes

/// Summary
// Mixins --> reusable behavior
// Inheritance --> IS-A relationship
// Mixins --> Has-A / Can-Do behavior