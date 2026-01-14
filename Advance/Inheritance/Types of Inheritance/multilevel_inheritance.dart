/// Multilevel Inheritance
// A class is inherit fromm another class & that class also inherit from another class.
// A class is extend from another class, and that class also extended from another class.

class Person {
  String? name;
  int? age;

  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
  }
}

class Teacher extends Person {
  String? degree;
  String? schoolName;

  @override
  void displayInfo() {
    super.displayInfo();
    print('Degree: $degree');
    print('School name: $schoolName');
  }
}

class Specialist extends Teacher {
  String? teachingSubject;

  @override
  void displayInfo() {
    super.displayInfo();
    print('teaching subject: $teachingSubject');
  }
}

void main(){
  Specialist p1 = Specialist();
  p1.name = 'Sonali';
  p1.age = 28;
  p1.degree = 'B.Sc';
  p1.schoolName = 'ABC School';
  p1.teachingSubject = 'General Science';
  p1.displayInfo();
  // Name: Sonali
  // Age: 28
  // Degree: B.Sc
  // School name: ABC School
  // teaching subject: General Science
}