/// Setter
// Setter is use to set/update/write values of class private properties.
// indirect write access of object private properties.
// it is also use for data validation.

/// Syntax
// set propertyName(type parameter){
//   this._privateProperty = parameter;
// }

/// Person Class
class Person {
  String? _firstName; // No constructor or late so it must be nullable.
  int? _age;

  // setter's
  set firstName(String? firstName) => _firstName = firstName;
  set age(int? age) => _age = age; // ? means i can assign null also

  void showDetails() {
    print('Name: $_firstName');
    print('Age: $_age');
  }
}

/// Product class
class Product {
  String? _productName;
  double? _productPrice;

  // setters
  set productName(String productName) => this._productName = productName;

  // setter with validation
  set productPrice(double productPrice) {
    if (productPrice < 0.0 || productPrice > 50.0) {
      throw Exception("Price range must in between 0.0 & 50.0");
    }
    this._productPrice = productPrice;
  }

  showData() {
    print('Product name: ${_productName ?? 'No Product'}');
    print('Product price: ${_productPrice ?? 0.0}');
    // print('Product price: ${_productPrice ?? 0.0}');
  }
}

void main() {
  /// Person objects
  Person person1 = Person();
  person1.showDetails();
  // Name: null
  // Age: null

  Person person2 = Person();
  person2.firstName = null; // setter parameters is nullable type
  person2.firstName = 'Sonali';
  person2.age = 26;
  person2.showDetails();
  // Name: Sonali
  // Age: 26

  /// Product objects
  Product product1 = Product();
  product1.showData();
  // Product name: No Product
  // Product price: 0.0
  // product1.productPrice = null; // setter parameter is not_nullable

  Product product2 = Product();
  product2._productName = 'Soap';
  product2._productPrice = 50.0;
  product2.showData();
  // Product name: Soap
  // Product price: 50.0

  Product product3 = Product();
  product3.productName = "Maggie";
  try {
    product3.productPrice = 70;
  } catch (e) {
    print(e); // Exception: Price range must in between 0.0 & 50.0
  }
  product3.showData();
  // Product name: Maggie
  // Product price: 0.0
}
