void main(){
  //sayHelloToUser(); //hata alırız , parametre vermek zorunlu 
  sayHelloToUser("Okan");
  var result = calculatePay(123.45, 8.88);
  print(result);

  test1(1,2,3);

  test2(9); //x=9,y=0,z=0
  test2(10,2); //x=10,y=2,z=0
  
  print("test3");
  test3();
  //test3(1,2,5); //hata verir,isimlendirilmiş parametre oldugu icin
  test3(y:67);
  test3(x:12,y:40,z:70); //isimlendirilmiş parametreleri istedigimiz sekilde sıralayabilriz.
  test3(y:40,x:12,z:70); //yukarıdaki ile aynı işlevi görürü
}

//required parameter
void sayHelloToUser(String user){
  print("hello $user");
}

double calculatePay(double total,double percent){
  var result = total*percent/100;
  return result;
}

//OPTİONAL PARAMS
//opsiyonel olmasını istedigin parametreyi [] içerisine al
//birden fazla parametreyi opsiyonel olmasını istiyorsan ikisini aynı [] içine al

//opsiyonel parametre yok hepsi zorunlu verilmesi gerekiyor
void test1(int number1,int number2,int number3){
  print(number1);
  print(number2);
  print(number3);
}

void test2(int x, [int y=0 ,int z=0]){
  //zorunlu olan parametre en başa yazılır
  print(x);
  print(y);
  print(z);
}

//named parameters
void test3({int x=0,int y=0,int z=0}){
  print(x);
  print(y);
  print(z);
}