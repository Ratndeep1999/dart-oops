/// Key Points
// Fields and Methods : instance or static
// Constructor : single or multiple
// For each object, there is a separate copy of instance variable where as methods are shared commonly.


/// Hashcode
// Every object is unique and has a different hashcode is an address in a memory of an object.
// Use to identify the object uniquely.
// hashcode is the field of 'object' class. simply class inherit from 'object' class.

/// Same name not allow of class members
// There cannot be same name for fields, methods, constructor, even getter and setters.

/// Object and Reference are Different things
// Object : an instance of class that will be present inside the memory.
// Reference : variable that holds the address or hashcode of the object.

class Person{}

void main(){
  Person p1 = Person();
  Person p2 = p1; // p2 holds address of p1 object.
  print(p1 == p2);  // true
}

