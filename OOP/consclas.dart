void main(List<String> args) {
  var student = Student("yagmur","fidan");
  print(student.firstName);
}

class Student{
  String? firstName;
  String? lastName;

  Student(this.firstName , this.lastName){
    print("constructor calıstırıldı");
  }
}