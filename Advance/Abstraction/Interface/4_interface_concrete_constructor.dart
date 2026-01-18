class Animal {
  late int numberOfLegs; // this is not abstract member so i cannot use get here

  // Animal({required this.numberOfLegs}); Animal’s constructor is completely ignored

  void walk() {
    print('animal can walk on their legs');
  }
}

class Dog implements Animal {
  @override
  int numberOfLegs;

  Dog({required this.numberOfLegs});

  // Dog(int legs) : super(); // super() is NOT allowed with implements

  @override
  void walk() {
    print('Dog can walk on $numberOfLegs legs');
  }
}

void main() {
  Animal dog = Dog(numberOfLegs: 4);

  dog.walk(); // Dog can walk on 4 legs
}

/// Rule
// extends -->	IS-A relationship (inherit data + behavior)
// implements	-->  CAN-DO contract (structure only)

// implements --> NO super(), NO constructor reuse
// extends    --> YES super(), YES constructor reuse

// implements --> contract only (no constructor inheritance)
// extends    --> full inheritance (constructor + fields)
// abstract   --> cannot be instantiated (still follows null-safety)

/// Note
// abstract class + implements → pure interface behavior
// Constructor in Animal is not used
// super() is not allowed
// Dog must implement all members
// Using Animal dog = Dog(...) shows polymorphism
