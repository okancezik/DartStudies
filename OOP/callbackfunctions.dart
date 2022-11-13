/**CALLBACK FUNCTIONS
 * Bir fonksiyon çalışmasını tamamladıktan sonra başka bir fonksiyonun çalışmasını sağlayan fonksiyonlara 
 * callback fonksiyon denir. Callback fonksiyonları herhangi bir fonksiyona parametre olarak verdikten sonra 
 * geri çağıracağımız fonksiyonlar da diyebiliriz. Yani callback, başka bir fonksiyona geçirilen bir fonksiyondur. 
 */

void main(List<String> args) {
  doProcess(3, 3, sum);
  doProcess(1, 4, (int a,int b){return a+b;});
  doProcess(0, 12, sum2);
}

void doProcess(int a, int b, Function f){
  var res = f(a,b);
  print("result : " + res.toString());
}

int sum(int a,int b){
  return a+b;
}

int sum2(int a,int b) => a+b;

var sum3=(int a,int b){
  return a+b;
};

