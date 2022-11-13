void main(List<String> args) {
  
  print(doWork<int>(32, 49));


}

double doWork<T extends num>(T a, T b){
  return (a+b)/2;
}

class MyList<T>{
  
}