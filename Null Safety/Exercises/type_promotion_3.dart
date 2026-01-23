import 'dart:math';

/// 1. ...
/// 2. ...

void main() {
  // 1. ...
  Object name = 'Sonali';

  if (name is String) {
    // here dart infer that variable is string
    print('Length of name is ${name.length}');
  }

  // 2. ...
  DataProvider().myMethod();
}

class DataProvider {
  String? get stringOrNull => Random().nextBool() ? "Hello" : null;

  void myMethod() {
    String? value = stringOrNull;

    if (value is String) {
      print('The length of value is ${value.length}'); // i can use 'stringOrNull!' directly.
    } else {
      print('The value is not String');
    }
  }
}
