/// Generic Methods
// Generic methods allow a method to work with
// different data types using a type parameter.

/// Syntax
T methodName<T>(T value) {
  return value;
}

/// Example with single parameter
T printValue<T>(T value) {
  print(value);
  return value;
}

/// Example with multiple parameters
T printMultiValues<T, U>(T value1, U value2) {
  print('value1: $value1 & value2: $value2');
  return value1;
}

/// Example of Generic method inside a class
class Utils {
  // This is method
  T getFirst<T>(List<T> items) {
    return items.first;
  }
}

void main() {
  /// Example with single parameters
  printValue<int>(10); // 10
  printValue<String>("Dart"); // Dart
  printValue<double>(3.14); // 3.14

  /// Example with multi parameters
  printMultiValues<int, String>(
    26,
    "Ratndeep",
  ); // value1: 26 & value2: Ratndeep
  printMultiValues<String, int>("Sonali", 25); // value1: Sonali & value2: 25
  printMultiValues<num, bool>(26.3, true); // value1: 26.3 & value2: true

  /// Example with generic class method
  Utils utils = Utils();

  print(utils.getFirst<int>([1, 2, 3])); // 1
  print(utils.getFirst<String>(["A", "B", "C"])); // A
}
