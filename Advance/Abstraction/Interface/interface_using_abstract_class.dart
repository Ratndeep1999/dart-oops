abstract class Person {
  canWalk();

  canRun();
}

class Student implements Person {
  @override
  canRun() => print('Student can walk..!');

  @override
  canWalk() => print('Student can run..!');
}
