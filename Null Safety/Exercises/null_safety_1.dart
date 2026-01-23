void main() {
  String? name;
  name = null;

  // ??
  String name2 = name ?? 'Sonali';
  print('Name: $name2'); // Name: Sonali

  // ! for single value
  // String name3 = name!;
  // print('Name: $name3'); // Unhandled exception: Null check operator used on a null value

  // ! for generics
  List<String?> names = ['Sonali', 'Ratndeep', null, 'Rahul'];
  String firstName = names.first!;
  print("FirstName: $firstName"); // FirstName: Sonali
}
