void main(List<String> args) {
  sayHello();
  print("result of calculateSum function: " +
      calculateSum(3, 4).
        toString()); //string bir ifade ile integer bir ifade toplanamaz o sebeple toString()

  print("result of calculateSum2 function : " + calculateSum2(2).toString());
  print("result of calculateSum2 function : " + calculateSum2(2, 6).toString());

  print("result of calculateSum3 function : " + calculateSum3().toString());
  print("result of calculateSum3 function : " + calculateSum3(10).toString()); // a=10, b ve c default degerleri

  print("result of calculateSum4 function : " + calculateSum4().toString());
  print("result of calculateSum4 function : " + calculateSum4(a: 3, c: 14).toString()); //b default degeri alır
  //named params alan fonksiyonlarda parametre degerleri atanırken isimlendirme yapılmak zorundadır.
  //örneğin calculateSum+(1,4,2) hatalı bir kullanım

  print("result of calculateSum5 function : " + calculateSum5(10).toString());
}

//no-parameters function(parametresiz fonksiyon)
void sayHello() {
  print("Hello");
}

//required parameters function(zorunlu parametreli fonksiyon)
int calculateSum(int a, int b) {
  return a + b;
}

//required + optional parametres(zorunlu ve opsiyonel parametrelerin oldugu fonksiyon)
//optional parametreler [] içerisine default degerleri verilerek yazılır
//zorunlu olan parametre en başa yazılır
int calculateSum2(int a, [int b = 3]) {
  //bu fonksiyon için a zorunlu, b opsiyonel parametredir
  return a + b;
}

//full optional parametres(tamamı opsiyonel parametreler)
int calculateSum3([int a = 1, int b = 2, int c = 3]) {
  return a + b + c;
}

//full optional and named params(tamamı opsiyonel ve isimlendirilmiş)
int calculateSum4({int a = 0, int b = 2, int c = 8}) {
  return a + b + c;
}

//required + optional and names params(zorunlu ve isimlendirilmiş opsiyonel parametreler)
int calculateSum5(int x, {int a = 0, int b = 2, int c = 8}) {
  return a + b + c;
}
