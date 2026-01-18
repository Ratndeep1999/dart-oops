class Laptop {
  String? version;

  void laptopDetail() => print('Laptop with Base Version.');

  void turnOn() => print('Laptop Turn On..!');

  void turnOff() {}
}

class MacBook implements Laptop {
  @override
  String? version;

  @override
  void laptopDetail() {
    print('MacBook with version macOS $version.');
  }

  @override
  turnOn() => print('MacBook $version Turned On..!');

  @override
  turnOff() => print('MacBook $version Turned Off..!');
}

void main() {
  /// Laptop Object
  Laptop laptop = Laptop();
  laptop.laptopDetail(); // Laptop with Base Version.
  laptop.turnOn(); // Laptop Turn On..!
  laptop.turnOff();

  /// MacBook Object
  Laptop macOS = MacBook();
  macOS.version = 'X 10.0 Cheetah';
  macOS.laptopDetail(); // MacBook with version macOS X 10.0 Cheetah.
  macOS.turnOn(); // MacBook X 10.0 Cheetah Turned On..!
  macOS.turnOff(); // MacBook X 10.0 Cheetah Turned Off..!
}
