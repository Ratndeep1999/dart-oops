class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

class Student extends Person {
  int std;
  String schoolName;

  Student(String name, int age, this.std, this.schoolName) : super(name, age) {
    print('Student name is $name and age is $age, pursuing class $std at school $schoolName');
  }
}

void main() {
  Student s1 = Student('Sonali', 16, 8, 'ABC');
  // Student name is Sonali and age is 16, pursuing class 8 at school ABC
}
