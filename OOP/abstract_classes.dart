void main(List<String> args) {}

/* Dart dilinde soyut sınıflar, somut sınıflar gibi derleme zamanında (compile time) değil de çalışma zamanında (runtime) 
 * çalıştığı için kendisinden bir nesne üretilememektedir. 
 * 
 * Anlaşılacağı üzere soyut sınıflar, derleme zamanında görevlerini yerine getirdikten sonra yok edilirler. 
 * 
 * Sınıf içinde metot metotIsmi () { } şeklinde tanımlanırken soyut sınıflarda ise metotIsmi () ; şeklinde olmaktadır.
 * soyut sınıftan miras alınarak oluşturulan her sınıf bu şekilde tanımlanmış fonksiyonları kullanmak zorundadır(override)
 * soyut tanımlanan methodlar override edilmek zorunda iken somut bir şekilde tanımlanan methodlar override edilmek
 * zorunda degildir*/

abstract class Human {
  String? eyeColor;
  String? name;

  void whatIsYourName(); //abstract method

  void talk() {
    //concrete method
    print("talkkk...");
  }
}

abstract class Abilities {
  void run();
  void song();
  void playPiano();
}

class Student extends Human implements Abilities{

  //Human class'ı extend edildi , Abilities class'ı implemente edildi
  //abstract classlar extend veya implemente edilebiliyor

  Student(){
    this.name = "Ahmet";
    this.whatIsYourName();
  }

  @override
  void playPiano() {
    // TODO: implement playPiano
  }

  @override
  void run() {
    // TODO: implement run
  }

  @override
  void song() {
    // TODO: implement song
  }

  @override
  void whatIsYourName() {
    // TODO: implement whatIsYourName
  }

}

class Teacher implements Human , Abilities{
  @override
  String? eyeColor;

  @override
  String? name;

  @override
  void playPiano() {
    // TODO: implement playPiano
  }

  @override
  void run() {
    // TODO: implement run
  }

  @override
  void song() {
    // TODO: implement song
  }

  @override
  void talk() {
    // TODO: implement talk
  }

  @override
  void whatIsYourName() {
    // TODO: implement whatIsYourName
  }

}
