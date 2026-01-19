
abstract class HumanInfo {
  String name();
}

abstract class HumanAction {
  void speak();
}

// Male implements multiple interfaces
class Male implements HumanInfo, HumanAction {
  final String _name;

  Male(this._name);

  @override
  String name() {
    return _name;
  }

  @override
  void speak() {
    print('Male $_name is speaking');
  }
}

// Female implements multiple interfaces
class Female implements HumanInfo, HumanAction {
  final String _name;

  Female(this._name);

  @override
  String name() {
    return _name;
  }

  @override
  void speak() {
    print('Female $_name is speaking');
  }
}

void main() {
  HumanInfo male = Male('Ratndeep');
  HumanInfo female = Female('Sonali');

  print('Name: ${male.name()}'); // Name: Ratndeep
  (male as HumanAction).speak(); // Male Ratndeep is speaking

  print('Name: ${female.name()}'); // Name: Sonali
  (female as HumanAction).speak(); // Female Sonali is speaking
}
