/// Flexible function parameters (Alternative to method Overloading)
class Calculator {
  // Method with optional parameters
  int add(int a, [int b = 0]) {
    return a + b;
  }
}

void main() {
  Calculator calc = Calculator();
  print(calc.add(5)); // 5
  print(calc.add(5, 10)); // 15
}
