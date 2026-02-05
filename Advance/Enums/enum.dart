///enum:
// Enum is a special data type that represents fix set of constant values.
// Declare using keyword 'enum' & outside the class
// Must contain at least one constant value.
// Immutable and can not be instantiated beyond their defined values.
// Each enum value is an instance of enum class and has an associated index.

/// syntax
// enum enumName {
//   constantValue1,
//   constantValue2,
//   constantValue3,
//   ...
//   constantValueN,
// }

/// Key-Points:
// Can-not inherited or extended.
// Values are fixed at compile time.
// Provides ".value" to get all enum values.