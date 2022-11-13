void main(List<String> args) {
  //PersonelManager personelManager = new PersonelManager(); //first define
  //var personelManager = new PersonelManager(); //second
  var personelManager = PersonelManager(); //third
  var customer = new Customer.withInfo("Okan", "Çezik");
  // customer.firstName = "Okan";
  // customer.lastName = "Çezik";
  personelManager.update(customer);
  personelManager.add(customer);


  //Person class'ı kendisini extend eden Personel class'ının referansını tutabilir
  Person personel = new Personel.WithInfo("Rıfkı","Masuno",2020);
  print(personel.firstName);


  var controller = PersonController();
  controller.operation(personel);

  //ENCAPSULATION - GETTER - SETTER 

  var student = Student();
    //ÖNEMLİ NOT : set metoduna değer ataması parametre verilerek yapılmaz. Bunun yerine verilecek değer eşittir operatörü ile atanır.
  student.setStudentNumber = "200404007";  //çalışır

  print("student numnber : ${student.getStudentNumber}");

  var person = Person.WithInfo("Rıfkı", "masuno");  
}

//dart dilinde classlar PascalCase , methodlar camelCase
class PersonelManager {
  void add(Customer customer) {
    print("${customer.firstName} ${customer.lastName} added to system...");
  }

  void update(Customer customer) {
    print("${customer.firstName} updated...");
  }
}

class Person{
  String? firstName;
  String? lastName;
  String? fullName;

  Person(){}

  Person.WithInfo(String firstName, String lastName){
    print("person withinfo constructor worked...");
    this.firstName = firstName;
    this.lastName = lastName; 
  }

  Person.WithInfo2(String firstName,String fullName){
    this.firstName = firstName;
    this.fullName = fullName;
  }

}

class PersonController{
  void operation(Person person){
    print("${person.firstName}...");
  }
}

//Customer, Person class'ını inherit etdiyor.
class Customer extends Person{

  //dartta aynı isimde iki constructor olamıyor
  //bunun için dartta name constructor var yani constructora isim veriliyor
  Customer() {
    print("object olustu");
  }

  Customer.withFirstName(String firstName) {
    this.firstName = firstName;
  }

  Customer.withLastName(String lastName) {
    this.lastName = lastName;
  }

  //tanımlamasak bile default olarak constructor vardır
  Customer.withInfo(String firstName, String lastName):super.WithInfo(firstName, lastName){
    print("customer withinfo constructor worked...");
  }
}

//Personel, Person class'ını inherit ediyor.(extends)
class Personel extends Person{
  int? dateOfStart;

  Personel(){}

  Personel.WithInfo(String firstName,String lastName,int dateOfStart):super.WithInfo(firstName, lastName){
    this.dateOfStart = dateOfStart;
  }
}

// Kapsülleme (Encapsulation) nedir?
// Bir sınıfa ait metot ve/veya değişkenlere erişimleri sınırlandırmak için kullanılan ve veri güvenliği sağlayan yöntemdir.

// Dart dilinde bir metot ve/veya değişkenin private olması için önüne _ (alt tire) işareti konulur ve bu alana dışarıdan erişim engellenmiş olur.

class Student{

  //studentNumber özelliği private olarak tanımlanmıştır
  String? _studentNumber;

  //Private olarak tanımlanan değişkenin değerini set metodu ile sınıf dışından değiştirebiliriz.
  //Set methodlar nasıl tanımlanır ? Sırasıyla set anahtar sözcüğü, metot adı ve parametre belirtilerek oluşturulur.
  set setStudentNumber(String studentNumber){
    _studentNumber = studentNumber;
  }


  //Private olarak tanımlanan değişkenin değerine get metodu ile sınıf dışından erişebiliriz.
  //Getter methodlar nasıl tanımlanır ? Sırasıyla geri dönüş tipi, get anahtar sözcüğü ve metot adı belirtilerek oluşturulur.
  //Getter methodlar parametre almazlar o sebeple tanımlanırken () gerek duyulmaz
  String? get getStudentNumber{
    return _studentNumber;
  }

  //parametresiz constructor
  Student(){
    print("nesne olustu");
  }
}
