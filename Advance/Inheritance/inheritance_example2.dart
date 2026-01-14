class Human {
  String name;
  int age;

  Human(this.name, this.age);

  void showDetails() {
    print('Name: $name');
    print('Age: $age');
  }

  void fvtColor() => print('Black');
}

class Male extends Human {
  String fsvColor;

  Male(this.fsvColor, String name, int age) : super(name, age);

  @override
  void fvtColor() => print('Male favourite color : $fsvColor');
}

class Female extends Human {
  String fsvColor;

  Female(this.fsvColor, String name, int age) : super(name, age);

  @override
  void fvtColor() => print('Male favourite color : $fsvColor');
}

main(){
  // Male object
  Male male = Male('Blue', 'Ratndeep', 26);
  male.showDetails();
  male.fvtColor();
  // Name: Ratndeep
  // Age: 26
  // Male favourite color : Blue

  // Female object
  Female female = Female('Pink', 'Sonali', 24);
  female.showDetails();
  female.fvtColor();
  // Name: Sonali
  // Age: 24
  // Male favourite color : Pink
}