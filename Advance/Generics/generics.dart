/// Generics
// Generics allow us to create classes, methods, or functions
// that can work with different data types.

/// In simple words
// Write code once and reuse it with multiple data types
// while maintaining type safety.

/// Syntax
class ClassName<T> {
  T value;

  ClassName(this.value);
}

/// Benefits
// Type Safety
// --> Provides compile-time type checking.
// --> Prevents runtime type errors.

// Code Reusability
// --> Same class or function can work with
// int, string, double, custom objects, etc.

// Clean & Maintainable Code
// --> Removes unnecessary type casting.
// --> Reduce duplicate code.
// --> Improves readability.

/// Without Generics
// class for integer data
class IntegerData {
  int data;

  IntegerData(this.data);
}

// class for String data
class StringData {
  String data;

  StringData(this.data);
}

/// With Generics
class Data<T> {
  T data;

  Data(this.data);
}

void main() {
  // Creating objects of their own specific type.
  IntegerData integerData = IntegerData(20);
  StringData stringData = StringData("Hello World");

  print(integerData.data); // 20
  print(stringData.data); // Hello World

  // Creating objects with different generic types
  Data<String> myData = Data("Ratndeep");
  Data<int> integerType = Data(26);
  Data<double> doubleType = Data(28.20);

  print(myData.data); // Ratndeep
  print(integerType.data); // 26
  print(doubleType.data); // 28.20
}