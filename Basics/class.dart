/// Class

// It is a blue-print/template/logical view of an object.
// It contains properties and methods that object will have.
// It is a user defined data-type.

/// Components
// Properties : variables that are use to store data, also known as fields and attributes.
// Methods : functions use to perform operations. also known as behaviour.
// Constructor : kind of method that use to initialize object of class.

/// Syntax
// class ClassName{
//   type variable1;  ....property1
//   type variable2;  ....property2
//
//   ClassName();  ....constructor
//
//   type methodName(){}  ....method
// }



class Person{
  String? name;
  int? age;
  bool? isMarried;

  Person(this.name, this.age, this.isMarried);
  // Now I can remove '?' from attributes

  void personIsEating(){
    print('Person is Eating Food');
  }

  void personIsRunning(){
    print('I am 5 years old and i am running');
  }
}
