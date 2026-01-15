/// Static Method
// Class level method declare with 'static' method.
// Used for utility/Helper-logic functions or operations related to class as a whole.
// Called using class name.

/// Note: Hashcode of static method returning object is not
/// same but if result is same then hashcode is same.

/// Person
class Person {
  static String isAdult(int age) {
    if (age < 18) {
      return 'Person is Not Adult';
    }
    return 'Person is Adult';
  }
}

/// SimpleInterest
class SimpleInterest {
  static double calculateInterest(double principal, double rate, double time) =>
      (principal * rate * time) / 100;
}

void main() {
  /// Person class
  String p1Data = Person.isAdult(26);
  print(p1Data); // Person is Adult

  String p2Data = Person.isAdult(16);
  print(p2Data); // Person is Not Adult

  /// SimpleInterest class
  double result1 = SimpleInterest.calculateInterest(1000, 2, 2);
  print('result1: $result1'); // result1: 40.0

  double result2 = SimpleInterest.calculateInterest(500, 2, 2);
  print('result2: $result2'); // result2: 20.0
}
