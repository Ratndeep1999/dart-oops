/// Inheritance of Constructor
// Process of inheriting the constructor of the parent class to child class.
// Always parent class constructor invoke first.
// Child class constructor invoke parent class constructor.

class A {
  A() {
    print('Class A constructor called');
  }
}

class B extends A {
  B() {
    print('Class B constructor called');
  }
}

class C extends B {
  C() {
    print('Class C constructor called');
  }
}

void main() {
  C c = C();
  // Class A constructor called
  // Class B constructor called
  // Class C constructor called
}
