/// Generic Type Restricting
// Generic type restricting allows us to limit which types can be
// used with a generic parameter. This is done using the `extends` keyword.

/// Example of type restricting in a class
// Only types that extend 'num' are allowed (int, double)
class Data<T extends num> {
  T data;

  Data(this.data);
}

/// Example of type restricting in a function
// Generic method restricted to numeric types
double getAverage<T extends num>(T value1, T value2) {
  return (value1 + value2) / 2;
}

void main() {
  /// Type restricting in class

  // Valid types - create an object of type int and double
  Data<int> intData = Data<int>(10);
  Data<double> doubleData = Data<double>(10.5);

  // print the data
  print("IntData: ${intData.data}"); // IntData: 10
  print("DoubleData: ${doubleData.data}"); // DoubleData: 10.5

  // Not Possible (String does not extend num)
  // Data<String> stringData = Data<String>("Hello");

  /// Type restricting in function

  // call the generic method
  print("Average of int: ${getAverage<int>(10, 20)}"); // Average of int: 15.0
  print("Average of double: ${getAverage<double>(10.5, 20.5)}"); // Average of double: 15.5
}
