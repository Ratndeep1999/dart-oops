abstract class Person {
  String? name;
  int? age;
  canWalk();
  canRun();
  intro();
}

class Student implements Person {
  @override
  String? name;

  @override
  int? age;

  @override
  canWalk() {
    print('Student can walk');
  }

  @override
  canRun() {
    print('Student can run');
  }

  @override
  intro() {
    print('Student $name is $age years old.');
  }
}

void main(){
  Person student = Student();
  student.canRun(); // Student can run
  student.canWalk(); // Student can walk
  student.name = 'Ratndeep';
  student.age = 26;
  student.intro(); // Student Ratndeep is 26 years old.
}