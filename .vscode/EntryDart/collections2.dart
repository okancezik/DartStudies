void main(List<String> args) {
  //LİSTE TANIMI
  List myList = [true, "Okan", 10]; //dynamic sized and dynamic data type

  print(myList); //[true,"Okan",10]
  print(myList[1]); //Okan

  myList.add(13); //added new value to myList
  print(myList); //[true,Okan,10,13]

  print("length of myList : ${myList.length}");

  var yourList = []; //created a empty list(dynamic sized and dinamic data type)
  yourList.add(14); //added new value to list
  print(yourList); //[14]

  //BELİRLİ TİPTEKİ LİSTELER

  List<String> names = []; //String veri tipinde degerleri saglayan dinamik büyüklükte bir liste

  names.add("Rıfkı"); //added new value to list
  print(names); //[Rıfkı]

  //names.add(12); //HATA DATA TYPE ERROR

  var nums = <int>[]; //int tipinde dinamik büyüklükte bir liste tanımlandı
  nums.add(12);
  print(nums); //[12]

  List<int> notes =
      <int>[]; //integer tipinde dinamik büyüklükte liste tanımlandı
  notes.add(10);
  notes.add(99);
  notes.removeAt(1); //1. indexteki degeri siler , remove() metodu ise liste icindeki degeri siler param olarak degeri alır

  //LİMİTLİ LİSTE
  //limitli listede listenin eleman sayısı sabittir

  List<int> mb = List.filled(10, 2); //10 elemandan olusan ve her elemanın degeri 2 olan bir limitli liste olusturuldu
  //mb.add(4); //HATA VERİR BU LİSTE SABİT UZUNLUKLU LİSTE OLARAK TANIMLANDI

  //LİMİTİ DEĞİŞTİRİLEBİLEN LİSTELER

  List<int> x = List.filled(10, 2,growable:true); //10 adet elemanın hepsi 2 degerine sahip ve liste büyüklüğü değişken 
  x.add(5);

  // for(var element in x){
  //   print(element);
  // }

  x.insert(1, 100); //1 indexine 100 degeri atandı
  print(x);
  print(x.reversed); //ters sıralandı
  print(x.last); //son elemanı verir
  print(x.first); //ilk elemanı verir
  print(x.isEmpty); //.isEmpty dolu/boş kontrolü yapar (true/false döndürür)

  //SET
  //set(küme) içerisinde herhangi bir datanın kopyası olamaz.
  
  Set<int> data1 = {1,2,1,2,2,2,3};
  print(data1);  //{1,2,3}

  data1.add(100); //set'e yeni deger eklendi
  print(data1);
  
  data1.remove(2); //2 degeri setten cıkarıldı
  print(data1); //{1,3,100}

  print(data1.first);
  print(data1.last);

  Set<int> data2 = {1, -2, 7, 1, 4, 2};

  var data3 = {data1, data2};
  print(data3);

  var data4 = {...data1,...data2}; //SPREAD
  print(data4);

  var result = data4.difference(data1); //iki küme farkını alır , geriye küme döner
  print(result);

  var result2 = data4.union(data2); //union metodu iki kümenin birleşimini alır.
  print(result2);

  var result3 = data4.intersection(data2); //intersection metodu iki kümenin kesişimini alır.
  print(result3);

  //MAPS
  //key,values ilişkisi vardır. value'e erişmek için key kullanılır

  Map<String,int> myMap = {
    "diff" : 91,
    "oop" : 94,
    "networks" : 99 
  };

  print(myMap["diff"]);

   myMap["andoridprogramming"] = 100; //map'e yeni key,value çifti ekledik
}
