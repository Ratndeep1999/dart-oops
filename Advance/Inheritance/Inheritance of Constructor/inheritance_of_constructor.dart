/// Inheritance of Constructor
// Constructors are NOT inherited in Dart. When a child class object
// is created the parent class constructor is invoked automatically
// first this process is called constructor chaining.

class A {
  A(String name) {
    print('Class A constructor called');
    print('Name: $name');
  }
}

class B extends A {
  B() : super('Ratndeep') {
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
