class Person {
  late String fullName = _getFullName();
  late String firstName = fullName.split(" ").first;
  late String lastName = fullName.split(" ").last;

  String _getFullName() {
    print('_getFullName method called');
    return "Sonali Kumari";
  }
}

void main() {
  print('Start');
  Person person = Person();
  print('First name: ${person.firstName}');
  print('Last name: ${person.lastName}');
  print('Full name: ${person.fullName}');
  print('End');

  // Start
  // _getFullName method called
  // First name: Sonali
  // Last name: Kumari
  // Full name: Sonali Kumari
  // End
}

/// Note: If i remove 'late' from 'fullName' then _getFullName method invoke when 'person' object create

// Initialization flow
// _getFullName return --> fullName --> firstName --> lastName.
