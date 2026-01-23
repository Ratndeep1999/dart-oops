import 'dart:math';

/// Type Promotion
// Defines how a dart automatically converts a value of one type to another type.

/// Works in Following Ways
// General types to specific type
// nullable type to non-nullable type

void main() {
  /// general type to specific type

  Object name = "Sonali";
  // print(name.length); Error: because dart know the type is Object.

  if (name is String) {
    print("Sonali length: ${name.length}"); // 6
  }

  String result; // non nullable

  if (DateTime.now().hour < 12) {
    result = "Good Morning";
  } else {
    result = "Good Afternoon";
  }

  print("Result is $result"); // Result is Good Morning
  print("Length of result is ${result.length}"); // Length of result is 12

  /// Nullable type to Non-Nullable type
  try {
    printTextLength(null);
  } catch (e) {
    print(e); // the text is null
  }

  DataProvider().myMethod();
}

// method
void printTextLength(String? text) {
  if (text == null) {
    throw Exception('The text is null');
  }
  print('Text length: ${text.length}');
}

// class
class DataProvider {
  // getter that return string or null random le
  String? get stringOrNull => Random().nextBool() ? "Hello" : null;

  void myMethod() {
    String? value = stringOrNull;

    if (value is String) {
      print('The length of value is ${value.length}');
    } else {
      print('The value is not string');
    }
  }
}
