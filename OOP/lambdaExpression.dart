void main(List<String> args) {
  
  int f1() => 2;  //gizli bir return var

  int f2(int a , int b) => a*b; //return a*b yapar

  print("result of f1 function : "+f2(3,5).toString());

  dynamic f3 = (){
    return 1;
  };

  void f4 = (){
    print("f4 function worked...");
  };


  List<int> numbers = [1,2,3,4,3,2];
  
  //foreach parametre olarak icerisine fonksiyon aldı (callback)
  numbers.forEach((element) {
    print("element : ${element}");
  });

  justDoIt(2, 4, Sum);

}

int Sum(int a,int b){
  return a+b;
}

//yukarıdaki ile aynı
int Sum2(int a, int b) => a+b;

//int/string tipi verilemez, var,object,dynamic,void tipleri verilebilir
var Sum3 = (int a , int b){
  return a+b;
};

void Sum4 = (){
  print("sum4 function worked");
};


void justDoIt(int a, int b, Function f){
  var result = f(a,b);
  print(result);
}

int SumT(int a,int b) => a+b; //gizli return var