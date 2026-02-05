import 'dart:math';

/// Type Promotion
// Type promotion is a Dart feature where the compiler automatically
// treats a variable as a more specific type after performing a
// runtime type check.

/// Works in Following Ways
// General types to Specific type
// Nullable type to Non-nullable type

void main() {
  /// general type to specific type

  Object name = "Sonali";
  // print(name.length); Error: because dart know the type is Object.

  if (name is String) {
    // Dart promotes 'name' to string inside this block
    print("Sonali length: ${name.length}"); // 6
  }

  String result; // non nullable

  if (DateTime.now().hour < 12) {
    result = "Good Morning";
  } else {
    result = "Good Afternoon";
  }

  // Dart knows result is definitely initialized here
  print("Result is $result"); // Result is Good Morning
  print("Length of result is ${result.length}"); // Length of result is 12

  /// Nullable type to Non-Nullable type
  try {
    printTextLength(null);
  } catch (e) {
    print(e); // Exception: The text is null
  }

  DataProvider().myMethod();
}

/// Function demonstrating nullable → non-nullable promotion
void printTextLength(String? text) {
  if (text == null) {
    throw Exception('The text is null');
  }

  // After null-check, Dart promotes 'text' to String
  print('Text length: ${text.length}');
}

// Class
class DataProvider {

  // getter that return string or null
  String? get stringOrNull => Random().nextBool() ? "Hello" : null;

  void myMethod() {
    String? value = stringOrNull;

    if (value is String) {
      // value promoted to non-nullable String
      print('The length of value is ${value.length}');
    } else {
      print('The value is not string');
    }
  }
}
