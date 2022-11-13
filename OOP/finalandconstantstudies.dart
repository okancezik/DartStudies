/**
 * const compile time da yani programımız henüz çalışmaya başlamadığı anda kullanılacak sabitler için, 
 * final ise run time da çalışacak sabitler için tanımlanabilir.
 * 
 * CONST
 * const ile bir liste oluşturduğumuzda içerisine daha sonra veri eklenemez, final da ise eklenebilir.
 * constant variable tanımlanırken degeri atanmalıdır, sonradan deger atanmaz
 * 
 * FİNAL
 * sonradan degeri atanabilir ancak bir kere deger atanabilir
 * 
 * CONST OBJELER
 * const olarak tanımlanan bir listenin işaret ettiği referans ve listenin içindeki degerler degistirilemez
 *   sınıf içerisine direkt const bir variable konulamaz
 * 
 * FINAL OBJELER
 * final olarak tanımlanan bir listenin işaret ettiği referans degistirilemez ancak icindeki degerler degistirilebilir
 *   Class içerisinde final bir degisken tanımlanırsa tanımlandıgı konumda degeri atanmalıdır
 * 
 * STATIC
 *  static değişken static metodlarda ve class içerisinde tanımlanabilir
 * */

void main(List<String> args) {
  //const int a; HATA VERİR
  const int a = 10;

  final int b;
  b = 12;

  final int cv = 12;

  const List<int> myList = [1, 4, 3];
  //myList.add(12); HATA

  final List<int> yourList = [6, 3, 0, 12];
  yourList.add(100);

  //static int d; //static degiskenler statik metotlarda veya class icerisinde tanımlanabilir

  const MyClass myClass = MyClass(2, 3);
  print("a : " + myClass.a.toString());

  const YourClass yourClass = YourClass(2, 3);

  print(myClass == yourClass); //false
  
  //aynı sınıftan const olarak türetilen iki obje field degerleri de tamamen aynı ise bellekte aynı yeri işarat eder
  const MyClass myClass2 = MyClass(2, 3);
  print(myClass == myClass2); //true 

}

class TestClass {
  int? a;

  //final int b; //HATA VERİR Class içerisinde final bir degisken tanımlanırsa tanımlandıgı konumda degeri atanmalıdır
  final int b = 12;

  late final int c; //late anahtarı sayesinde class içerisinde final olarak tanımlanan degiskeen daha sonra degeri atanabilir

  //sınıf içerisine direkt const bir variable konulamaz
  //const int d = 10; //HATA VERİR

  static int? d;
}

class MyClass {
  final int a;
  final int b;

  const MyClass(this.a, this.b);

  //const constructor sayesinde final olarak tanımlanan fieldlara daha sonra deger verilebilir, 
  //const constructor gövdeye sahip olmaz
}

class YourClass{
  final int a;
  final int b;

  const YourClass(this.a,this.b);
}
