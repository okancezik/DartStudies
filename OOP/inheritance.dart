void main(List<String> args) {
  Student student = new Student("okan","masuno","200404804");
  //var student2 = new Student("yagmur","masuno","200404804");  
  //var student3 = Student("yagmur","masuno","200404804");

  int x = 20;
  int y = 20;

  // print(student == student2); //adresleri karsılastırıldı
  
  // print(student.firstName);

  // student = student2;
  // print(student == student2); //adres karsılastırıldı
 
  // print(student.firstName);

  //print(student)

}
 abstract class User{
  String? firstName;
  String? lastName;

  User(String firstName,String lastName){
    this.firstName = firstName;
    this.lastName = lastName;
    print("user constructor worked.");
  }

  int sum(int a,int b){
    return a+b;
  }
}

class Student extends User{

  String? studentNumber;

  Student(String firstName,String lastName,String studentNumber):super(firstName,lastName){
    this.studentNumber = studentNumber;
    print("student constructor worked.");
  }
}