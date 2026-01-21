/// Mixins
// Mixins are use to inherit code in multiple classes.
// We can use multiple mixins in a single class.
// Mixins are declared using keyword mixin follow by mixin name.
// Three keywords are use with mixins: mixin, with, and on.

/// Key-points
// Mixin has no constructor, Can't be instantiated means No object.
// Use to share code between multiple classes.
// We can override the mixin class methods.
// Cannot extend only work with 'on' and 'with'.

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

/// On
// In case we use mixins with the specific class, at that time use 'on' keyword.

/// With
// In case we use concreate class with mixins, at that time use 'with' keyword.