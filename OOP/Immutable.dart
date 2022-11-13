/**
 * Immutable (değişmez), nesneler bir kez oluşturulduktan sonra içeriği değiştirilemeyen sınıflardır. 
 * Tam tersi olarak, değiştirilebilen sınıflar da Mutable (değişebilir) sınıflardır. 
 */

void main(List<String> args) {
  var myClass = MyClass(2, 3);
  //myClass.a = 12;
}

//Immutable class
class MyClass{
  final int a;
  final int b;
  
  MyClass(this.a,this.b);
}