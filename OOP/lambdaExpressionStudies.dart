void main(List<String> args) {
  
  int f1(int a,int b) => a+b; //return a+b; işlemi sağlar

  print(f1(2, 4));

  int f2(int a, [int b=9]) => a+b;
  print(f2(23));

  List<int> myList = [2,5,1];
  myList.forEach((element) {
    print(element);
  });

  //var ile tanımlayabiliriz , int ile tanım yapılırsa hata verir
  var f3 = (int a, int b){
    //lambda exp , anonymous
    return a+b;
  };

  var f4 = (){
    print("hey, f4 function worked...");
  };

  dynamic f5 = (int a){
    //anonymous function
    //logic
    return a*2;
  };

  void f6 = (){
    //anonymous function
    //logic
    print("hey, f6 function worked...");
  };
  
  //void,var,dynamic ile tanımlanır...
}