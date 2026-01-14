class BankAccount {
  String _accountHolderName;
  int _accountNumber;
  double _balance;

  BankAccount({
    required String accountHolderName,
    required int accountNumber,
    double balance = 0.0,
  }) : _accountHolderName = accountHolderName,
       _accountNumber = accountNumber,
       _balance = balance;

  String get accountHolderName => this._accountHolderName;

  int get accountNumber => this._accountNumber;

  double get balance => this._balance;

  set deposit(double amount) {
    if (amount >= 0.0) {
      _balance = amount + _balance;
    } else {
      throw Exception('Deposit amount must be positive!');
    }
  }

  set withdraw(double amount) {
    if (amount <= _balance) {
      _balance = _balance - amount;
    } else {
      throw Exception('Insufficient Balance!');
    }
  }

  void accountDetails() {
    print('Account Holder Name: $_accountHolderName');
    print('Account No. $_accountNumber');
    print('Account Balance: $_balance');
  }
}

void main() {
  BankAccount a1 = BankAccount(
    accountHolderName: 'Sonali',
    accountNumber: 12345,
  );
  a1.accountDetails();
  // Account Holder Name: Sonali
  // Account No. 12345
  // Account Balance: 0.0

  try {
    a1.deposit = 5201.00;
  } catch (e) {
    print(e);
  }
  print('Balance: ${a1._balance}'); // Balance: 5201.0

  try {
    a1.withdraw = 5000.00;
  } catch (e) {
    print(e);
  }
  print('Balance: ${a1._balance}'); // 201.0

  try {
    a1.withdraw = 300.00;
  } catch (e) {
    print(e); // Exception: Insufficient Balance!
  }

  a1.withdraw = 201.00;
  print('Balance: ${a1._balance}'); // 0.0

  try {
    a1.deposit = -5.00;
  } catch (e) {
    print(e); // Exception: Deposit amount must be positive!
  }
  print('Balance: ${a1._balance}'); // 0.0

  try {
    a1.deposit = 51.00;
  } catch (e) {
    print(e);
  }
  a1.accountDetails();
  // Account Holder Name: Sonali
  // Account No. 12345
  // Account Balance: 51.0
}