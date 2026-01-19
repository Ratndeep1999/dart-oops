/// Multiple interfaces
// means a class can inherit from more than one class.

abstract class CalculateTotal {
  int total();
}

abstract class CalculateAverage {
  double average();
}

class Student implements CalculateAverage, CalculateTotal {
  int marks1, marks2, marks3;

  Student({required this.marks1, required this.marks2, required this.marks3});

  @override
  int total() => marks1 + marks2 + marks3;

  @override
  double average() => total() / 3;
}

void main(){
  Student s1 = Student(marks1: 80, marks2: 70, marks3: 50);
  print('Student total marks: ${s1.total()}'); // Student total marks: 200
  print('Student average marks: ${s1.average()}'); //Student average marks: 66.66
}
