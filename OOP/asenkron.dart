//async : asenkron , await : bekleme

void main(List<String> args) {
  printNumberAsync(3);
  sayHello();
  printNumberSync(2);
}

//long process func
void printNumberSync(int a){
  for(var i = 1;i<a;i++){
    print(i);
  }
}

Future<void> printNumberAsync(int a) async{
  
  await Future<void>.delayed(Duration(milliseconds :5 ),(){
    for(int i=0;i<10;i++){
      print(i);
    }
  });
}

void sayHello(){
  print("hello");
}