/// mixin methods override.

mixin canWalk {
  void walk() {
    print('I can walk..!');
  }
}

mixin canSwim {
  void swim() {
    print('I can swim..!');
  }
}

mixin canFly {
  void fly() {
    print('I can fly..!');
  }
}

/// Inherit mixins and override tht methods.
class Humans with canWalk, canSwim {
  @override
  void walk() {
    print('Humans can walk..!');
  }

  @override
  void swim() {
    print('Humans can swim..!');
  }
}

/// Inherit mixins and override tht methods.
class Chicken with canWalk, canFly {
  @override
  void walk() {
    print('Chicken can walk..!');
    super.walk();  // call parent class method
  }

  @override
  void fly() {
    print('Chicken can fly..!');
  }
}

void main() {
  /// Humans object
  Humans humans = Humans();
  humans.walk(); // Humans can walk..!
  humans.swim(); // Humans can swim..!

  /// Chicken object
  Chicken chicken = Chicken();
  chicken.walk(); // Chicken can walk..!
                  // I can walk..!
  chicken.fly(); // Chicken can fly..!
}
