/// Null Safety (Sound null safety)
// This allow developer to catch error at compile and run time

/// Advantages
// Reduce the chance of application crashes.
// Easy to find anf ix bug.
// Null safety avoids null errors, runtime bugs, vulnerabilities, and system crashes.

/// Key-points
// In dart, variable is non-nullable by default.
// if statement, !(not) and, ?? operator use to handle null errors.
// dart 2.12 introduce sound null safety to solve null null problems.
// NNBD stands for Non-Nullable By Default.
// Non-Nullable type is conformed never to be null.

void main() {
  /// Difference between Null, Empty and Blank
  // Null:
  Null data = null;
  print(data.runtimeType); // Null
  // Empty:
  var empty = "";
  print(empty.runtimeType); // String
  // Blank:
  var blank = " ";
  print(blank.runtimeType); // String

  String? name; // null-safe variable
  name = 'Sonali'; // variable accept String
  name = null; // variable accept null

  // check is name is null
  if (name == null) {
    print('Name is null');
  }

  // assign default value if variable is null
  String name1 = name ?? "Ratndeep";
  print('name1 = $name1');

  // tell that variable is not null
  String name2 = name!;
  // print('name2 = $name2');
}
