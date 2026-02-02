/// Generic Type Restricting
// Generic type restricting allows us to limit
// the types that can be used with a generic.

/// Example of type restricting of class
// Define generic class with bounded type
class Data<T extends num> {
  T data;

  Data(this.data);
}

/// Example of type restricting of function
// Define generic method
double getAverage<T extends num>(T value1, T value2) {
  return (value1 + value2) / 2;
}

void main() {
  /// Example of type restricting in class

  // create an object of type int and double
  Data<int> intData = Data<int>(10);
  Data<double> doubleData = Data<double>(10.5);
  // print the data
  print("IntData: ${intData.data}"); // IntData: 10
  print("DoubleData: ${doubleData.data}"); // DoubleData: 10.5
  // Not Possible
  // Data<String> stringData = Data<String>("Hello");

  /// Example of type restricting in function

  // call the generic method
  print("Average of int: ${getAverage<int>(10, 20)}"); // Average of int: 15.0
  print("Average of double: ${getAverage<double>(10.5, 20.5)}"); // Average of double: 15.5
}
