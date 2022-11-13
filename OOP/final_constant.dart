void main(List<String> args) {
  
  int a = 10;
  a = a - 1;

  //final variable
  final int b; //sonradan degeri atanabilir ancak bir kere deger atanabilir
  b = 13;

  //constant variable tanımlanırken degeri atanmalıdır
  const int c = 99;

  //static değişkenler static olmayan metot içerisinde tanımlayamaz
  //static değişken static metodlarda ve class içerisinde tanımlanabilir

  //constant ve static bellekte tek bir instance oluşturur , benzerlikleri budur
  //static variable deger degistirebilir

  final List<int> nums = [1,4,2];
  //nums = [2,4,8]; //HATA VERİR CUNKU BU LİSTE İŞARET ETTİĞİ LİSTEYİ BİR DAHA DEĞİŞİTİREMEZ
  nums.add(90); //AYNI LİSTEYE YENİ DEGER EKLEYEBİLİRİZ

  const List<int> numbers = [3,4,10];
  //numbers.add(100); //HATA VERİR NUMBERS LİSTESİ CONSTANT OLARAK TANIMLANDIGI İÇİN ATANAN LİSTENİN ADRESİ DE İÇİNDEKİ DEGERLERDE DEGİSMEZ

  // TestClass test = TestClass(); //const object olusturamayız

  TestClass.staticMethod(); //çalışır
  //staticMethod(); //çalışmaz
}

class TestClass{
  
  int a = 3;
  //class içerisinde final veya const degiskeni tanımlarken degeri atanmalıdır.
  //final int c; //HATA
  
  late final int b; //late keyword sayesinde final olarak tanımlanan bir degiskene daha sonra deger atama islemi yapılabilir
  
  //sınıf içerisine direkt const bir variable konulamaz
  //const int c=10; //HATA VERİR

  //static  variable
  static int? d;

  void f(){
    d = 12;
  }

  static void staticMethod(){
    print("static method of TestClass worked...");
  }

}

//const olarak tanımlanan obje ve const tipinde constructor varsa bu iki tanımlanan objenin field degerleri aynı ise bu iki obje aynı referansı isaret eder

//const obje tanımlamak için const tipinde tanımlı 
//constructura ihtiyac var

