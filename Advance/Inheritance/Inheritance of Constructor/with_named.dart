class Animal {
  int numOfLegs;
  bool isTale;

  Animal({required this.numOfLegs, required this.isTale});

  Animal.onlyLegs({required this.numOfLegs, this.isTale = true}) {
    print('Animal Named Constructor Invoke');
  }

  // another syntax
  // Animal.onlyLegs(this.numOfLegs) : this.isTale = false {
  //   print('Animal Named Constructor Invoke');
  // }
}

class Dog extends Animal {
  int lifeSpan;

  Dog({required int numOfLegs, required this.lifeSpan})
    : super.onlyLegs(numOfLegs: numOfLegs); // I can put isTale: isTale, that affect parent constructor
}

void main() {
  Dog d1 = Dog(numOfLegs: 4, lifeSpan: 12); // Animal Named Constructor
  print('Total legs of Dog ${d1.numOfLegs}'); // Total legs of Dog 4
  print('Is Dog has tail: ${d1.isTale}'); // Is Dog has tail: true
  print('Lifespan of Dog ${d1.lifeSpan}'); // Lifespan of Dog 12
}
