abstract class Bank {
  String name;
  double rate;

  Bank({required this.name, required this.rate});

  void interest();

  void bankName() => print('Bank name: $name');
}

class IOB extends Bank {
  IOB({required super.name, required super.rate});

  @override
  void interest() => print('Rate of interest of IOB bank is $rate');
}

class BOI extends Bank {
  BOI({required String name, required double rate})
    : super(name: name, rate: rate);

  @override
  void interest() => print('Rate of interest of BOI bank is $rate');
}

void main() {
  IOB iob = IOB(name: 'IOB', rate: 6.5);
  iob.bankName(); // Bank name: IOB
  iob.interest(); // Rate of interest of IOB bank is 6.5

  BOI boi =BOI(name: 'IOB', rate: 6.0);
  boi.bankName(); // Bank name: IOB
  boi.interest(); // Rate of interest of BOI bank is 6.0
}
