/// Null Safety (Sound null safety)
// Null safety helps developers catch null-related errors at compile time and runtime.

/// Advantages
// Reduces application crashes caused by null errors.
// Makes bugs easier to find and fix.
// Prevents runtime null exceptions and improves app stability.

/// Key-points
// In dart, variable is non-nullable by default.
// Dart 2.12 introduced Sound Null Safety.
// NNBD stands for Non-Nullable By Default.
// Use if-checks, ! (null assertion), and ?? (null-coalescing) operators to handle nullable values.

void main() {
  /// Difference between Null, Empty and Blank

  // Null --> No value at all
  Null data = null;
  print(data.runtimeType); // Null

  // Empty --> Value exists but contains nothing
  var empty = "";
  print(empty.runtimeType); // String

  // Blank --> Contains whitespace
  var blank = " ";
  print(blank.runtimeType); // String

  // Nullable vs Non-nullable
  String? name; // Nullable variable
  name = 'Sonali'; // Accept String
  name = null; // Accept null

  // Null check
  if (name == null) {
    print('Name is null');
  }

  // Null-coalescing operator (??)
  // Provides a default value if name is null
  String name1 = name ?? "Ratndeep";
  print('name1 = $name1');

  // Null assertion operator (!)
  // Tells the compiler: "I am sure this is not null"
  // Throws runtime error if value is actually null
  String name2 = name!;
  print(name2); // Unhandled exception: Null check operator used on a null value
}
