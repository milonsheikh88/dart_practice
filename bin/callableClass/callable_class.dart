class Student {
  String call(String name, int age) {
    return('Student name is $name and Age is $age');
  }
}

void main() {
  Student stu = Student();
  var msg = stu('Sharma',18);     // Class instance called like a function.
  print(msg);
}