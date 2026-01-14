/// Hierarchical Inheritance
// Parent class is inherit by multiple child classes.

class Human {
  String name;
  int age;

  Human(this.name, this.age);

  void showDetails() {
    print('Name: $name');
    print('Age: $age');
  }
}

class Male extends Human {
  String fsvColor;

  Male(this.fsvColor, String name, int age) : super(name, age);

  @override
  void showDetails() {
    super.showDetails();
    print('Favourite color : $fsvColor');
  }
}

class Female extends Human {
  String fsvColor;

  Female(this.fsvColor, String name, int age) : super(name, age);

  @override
  void showDetails() {
    super.showDetails();
    print('Favourite color : $fsvColor');
  }
}

main() {
  // Male object
  Male male = Male('Blue', 'Ratndeep', 26);
  male.showDetails();
  // Name: Ratndeep
  // Age: 26
  // Favourite color : Blue

  // Female object
  Female female = Female('Pink', 'Sonali', 24);
  female.showDetails();
  // Name: Sonali
  // Age: 24
  // Favourite color : Pink
}
