/// Multiline constructor
class Person {
  String? name;
  int? age;

  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

  void showDetails() {
    print('Name: $name');
    print('Age: $age');
  }
}

/// Optional positional parameters
class Student {
  String name;
  int age;
  String collageName;
  String dressColor;

  Student(
    this.name,
    this.age, [
    this.dressColor = 'White',
    this.collageName = 'ABC collage',
  ]);

  void displayDetails() {
    print('Name: $name');
    print('Age: $age');
    print('Collage name: $collageName');
    print('Dress color: $dressColor');
  }
}

/// Optional named parameters
class BankAccount {
  String accountHolderName;
  String bankName;
  double? balance;

  BankAccount({
    required this.accountHolderName,
    this.balance,
    this.bankName = 'ABC Bank',
  });

  void accountDetails() {
    print('Account holder name: $accountHolderName');
    print('Bank name: $bankName');
    print('Balance: ${balance ?? 0.0}');
  }
}

void main() {
  /// Multiline constructor
  Person person = Person('Ratndeep', 26);
  person.showDetails();
  // Name: Ratndeep
  // Age: 26

  /// Optional positional parameters
  Student student1 = Student('Sonali', 28);
  student1.displayDetails();
  // Name: Sonali
  // Age: 28
  // Collage name: ABC collage
  // Dress color: White

  Student student2 = Student('Ratndeep', 26, 'Black');
  student2.displayDetails();
  // Name: Ratndeep
  // Age: 26
  // Collage name: ABC collage
  // Dress color: Black

  /// Optional named parameters
  BankAccount ratndeep = BankAccount(
    accountHolderName: 'Ratndeep',
    balance: 2002.0,
  );
  ratndeep.accountDetails();
  // Account holder name: Ratndeep
  // Bank name: ABC Bank
  // Balance: 2002.0

  BankAccount sonali = BankAccount(
    accountHolderName: 'Sonali',
    bankName: 'HDFC Bank',
  );
  sonali.accountDetails();
  // Account holder name: Sonali
  // Bank name: HDFC Bank
  // Balance: 0.0
}
