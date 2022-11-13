void main(List<String> args) {
  
  //print("hello world");
  
  int age = 15;
  
  double kdv = 25.7;
  
  num x = 1.6;  //bütün sayı tipkerini taşır(num)

  bool isSure = true;

  String name = "Enes";

  String name2 = 'Okan';

  var value = "otomatik deger";

  //value = 123; //hata verir

  dynamic ayse = "merhaba";

  ayse = 123;

  //dynamic veri tipi runtime da derlenir.

  String a = "merhaba";
  int b=12;

  //print(a+ b.toString());

  //string interpolasyon
  //print("$a $b");

  String c = "12"; 
  //print(int.parse(c)+23);

  // if (b == 12) {
  //   print("enes adamdır...");
  // } else {
  //   print("devam");
  // }

  int z = 12;
  int y = 10;


  /**
   * LİTERAL
   * Değişkenlere veri tipi atanmaması durumuna denilmektedir. Bu şekilde gösterimler bizim için çok fazla bir şey ifade etmemektedir.
   *  Çünkü bir veri kullanılırken değişken tanımlama işlemi yaparak aslında atandığı değişkeni kullanmaktayız. 
   * Ancak derleyici üzerinde bu şekilde tanımlar yapabilmekteyiz.
   */

  /**
   * INTERPOLATION
   * Interpolation kavramı temel olarak tanımlanmış iki değişkenin +(plus) işareti ile değil de parantezler içerisinde 
   * $(dolar) işareti kullanımı ile birleştirilmesi işlemidir.
   */

    String firstName = "Okan";
    String lastName = 'Çezik';

    //print(firstName + " " +lastName); //bu dogru kullanım ancak interpolasyon daha iyidir.
    print("$firstName $lastName");  //INTERPOLATION 
    print("firstName uzunlugu : ${firstName.length}");

    int numberOne = 21;
    int numberSecond = 10;
    //print("numberOne : " + numberOne); //HATA VERİR
    print("numberOne : " + numberOne.toString());
    print("numberOne : $numberOne");  //INTERPOLATION

    print("eni $numberOne boyu $numberSecond olan dikdörtgenin alanı : $numberOne * $numberSecond"); //çarpma işlemi gerçekleşmez
    print("eni $numberOne boyu $numberSecond olan dikdörtgenin alanı : ${numberOne*numberSecond}"); //carpma işlemi gerçekleşir
  
    //CONST TYPE
    final city = "Ankara";  //final String city = "Ankara" diye de tanımlayabilirdik
    //city = "Istanbul"; //HATA VERİR

    const PI = 3.14;


  
  //-------------------------------------------------------------------------------------------------

  // for(var i=0;i<10;i++){
  //   print(i);
  // }

//WHİLE
  // int i=10;
  // while(i>0){
  //   print(i);
  //   i--;
  // }

//LİST VE FORIN
  // List<int> myArray = [98,91,34]; 

  // for(var element in myArray){
  //   print(element);
  // }

//MyLoop(5);


}

int MyLoop(int n){
  if(n <= 0){
    return 0;
  }
  print(n);
  return MyLoop(n-1);
}

Sum(int a,int b){
  print(a+b);
}