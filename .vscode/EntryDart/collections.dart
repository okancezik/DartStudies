void main(){
  //List num = [1,5,"okan"];

  //print(num[2]); //okan
  //print(num[10]); //HATA VERİR RANGEERROR

  //num[3] = "çezik"; HATA

  var myList = ["süt","elma","gofret"];
  print(myList);

  print(myList[1]); //elma
  //myList[3] = "asd"; HATA
  
  myList[2] = "dondurma";  //deger degistirebiliriz.
  myList.add("rıfkı");     //listeye yeni data ekledik.
  print(myList[myList.length-1]);

  print("liste uzunlugu : ${myList.length}");
  print("2. indexteki değerin uzunlugu : ${myList[2].length}");

  var yourList = []; 
  //yourList[0] = "ali"; HATA VERİYOR
  yourList.add("ali");  //dogru kullanım , listeye data ekledik.
  print(yourList);

  List ourList = [];  //boş bir liste olusturuldu
  ourList.add("okan"); //listeye eleman eklendi.
  print(ourList[0]);

  //belli bir tipteki listeler

  var nums = <int>[];  //tamamı integer tipinde boş bir liste olusturuldu, generics
  nums.add(12);
   
  List<int> nums2 = []; //farklı bir tanımlama
  nums2.add(90);        //listeye integer tipinde yeni bir deger ekledik
  print(nums2[0]);

  List<int> nums3 = <int>[];
  
  //Limitli Liste
  //limitli listede listenin eleman sayısı sabittir

  List<int> limitliListe = List.filled(5, 1); //5 elemandan olusan ve her elemanın degeri 1 olan bir limitli liste olusturuldu
  print(limitliListe[3]); //1

  //limitliListe.add(30); //hata verir , limitli listede liste boyu degismez
   limitliListe[2] = 98; //2. indexteki deger degistirildi
   print(limitliListe[2]);

   //Limiti değiştirilebilen listeler

   List<int> notes = List.filled(3, 90,growable: true);
   
   for (var element in notes) {
     print(element);
   }

   notes.add(100);  //yeni bir eleman eklendi
   print("eleman eklendikten sonra");
   for (var element in notes) {
     print(element);
   }

   notes.insert(1, 46); //1. indexe 46 degeri eklendi

   notes.remove(100); //100 degeri notes listesinden silindi

   print("eleman silindikten sonra");

   for (var element in notes) {
     print(element);
   }

   notes.remove(90); //3 90 dan ilki silinir
   
   print("90 degeri silindikten sonra");
   
   for (var element in notes) {
     print(element);
   }

  notes.add(12);
  notes.add(93);

  print("index vererek listeden kaldırma işlemi sonrası");
  notes.removeAt(2); //0 indexindeki deger listeden kaldırıldı

  print(notes[2]);

  //SETS
  //set(küme) içerisinde herhangi bir datanın kopyası olamaz.
  print("SETS");
  Set<int> data1 = {13,1,2,3,2,4,5,1};
  print(data1);

  data1.add(67);
  print("set'e eleman eklendikten sonraki durumu");
  print(data1);

  data1.remove(13);
  print("setten eleman silindikten sonraki durumu");
  print(data1);

  Set<int> data2 = {0,-2,4,1,2};
  print("data2 : $data2");
  print("ilk eleman : ${data2.first}");
  print("son eleman : ${data2.last}");
  
  var data3 = {data1,data2}; //setlerden olusan bir data {{1,2,3,4,5,67} , {0,-2,4,1,2}}
  print(data3);

  var data4 = {...data1,...data2}; //spread
  print("data4 : $data4");
  print("data2 : $data2");

  Set<int> data5 = data4.difference(data2); //difference metodu iki kümenin farkını alır.
  print("data5 : $data5");

  print(data4.intersection(data2)); //intersection metodu iki kümenin kesişimini alır.
  print(data4.union(data2)); //union metodu iki kümenin birleşimini alır.

  //MAPS
  //key,values ilişkisi vardır. value'e erişmek için key kullanılır

  Map<String,int> myMap = {
    "diff" : 91,
    "oop" : 94,
    "networks" : 99 
  };

  print("note1 keyin degeri : ${myMap['diff']}");

  for (var element in myMap.entries) {
    print(element);
  }

  myMap["andoridprogramming"] = 100; //map'e yeni key,value çifti ekledik
  
  for (var element in myMap.keys) {
    print(element);
  }

}