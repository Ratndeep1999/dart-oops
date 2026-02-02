/// Polymorphism using abstract class

abstract class Payment {
  void pay();
}

class UpiPayment implements Payment {
  @override
  void pay() {
    print('Payment via UPI');
  }
}

class CardPayment implements Payment {
  @override
  void pay() {
    print('Payment via Card');
  }
}

/// Calls the appropriate sound method based in the object type.
void makePayment(Payment payment) {
  payment.pay();
}

void main() {
  Payment upi = UpiPayment();
  Payment card = CardPayment();

  makePayment(upi); // Payment via UPI
  makePayment(card); // Payment via Card
}
