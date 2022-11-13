void main(List<String> args){
  print("merhaba okan ben geldim");

  //primitive types

  //bir değişkenin isimlendirmesinde rakamla veya nokta  başlayamaz

  String name = "Okan";
  //print(name);

  int birthYear = 2001;
  bool isEntry = true;

  //print("Birth year : " + birthYear); HATA VERİR , STRİNG BİR DEGİSKEN İLE INTEGER DEGİSKEN TOPLANAMAZ(TİP UYUŞMAZLIGI)
  //print("Birth year : " + birthYear.toString());  DOGRU

  var controlHandle = false;
  //controlHandle = "merhaba"; // HATA bu degisken ilk başta boolean deger aldıgı icin artık sadece boolean deger alabilir

  if(controlHandle){
    print("handle edilmiş");
  }else{
    print("handle edilmemis abi....");
  }

  int note = 10;

  if(note >= 55 ){
    print("öğrenci dersi geçmiş abiii...");
  }else if(note >= 40){
    print("bütünleme abi...");
  }else{
    print("kaldı abiiii");
  }

  String note2 = "A";
  
  switch(note2){
    case "A" : {
      print("Süpeeer abiiii");
    }
    break;
    
    case "B" : {print("yine iyi abiii..");} 
    break;

    case "C" : {print("calıs");}
    break;
    
    default : {print("bilinmiyor...");}
  }

  //TERNARY

  note == "A" ? print("Süper not abi") : print("fenasın be");

  int x = 10;
  int y = 54;

  x > y == true ? print(" x y den buyuk") : print("x y den kucuk");

  int z = x > y ? 30 : 45;
  print(z); 

  

}