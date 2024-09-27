//Praktikum 1 langkah 1
void main() {
  var list1 = [1, 2, 3];
  assert(list1.length == 3);
  assert(list1[1] == 2);
  list1[1] = 1;
  assert(list1[1] == 1);
  
//praktikum 1 langkah 3
  final List<String?> list2 = List.filled(5, null);
  list2[1] = 'Brilliantna Salsabila';
  list2[2] = '2241720041';
  print(list2);

//praktikum 2 langkah 1
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
print(halogens);

//praktikum 2 langkah 3
var names1 = <String>{};  
  Set<String> names2 = {};  
  names1.add('Brilliantna Salsabila');     
  names1.addAll(['2241720041']); 
  names2.add('Brilliantna');      
  names2.addAll(['2241720041']); 
  var names3 = <String, String>{}; 
  print(names1);  
  print(names2);  
  print(names3);  

//praktikum 3 langkah 1
var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    // 'fifth': '1'
    'fifth' : 'golden rings'
  };
  gifts['nama'] = 'Brilliantna Salsabila'; 
  gifts['NIM'] = '2241720041'; 
  var nobleGases = {
    2: 'helium',
    10: 'neon',
    // 18: 2,
    18 : 'argon'
  };
  
print(gifts);
print(nobleGases);

//praktikum 3 langkah 3
nobleGases[1] = 'Brilliantna Salsabila'; 
nobleGases[3] = '2241720041';  

var mhs1 = Map<String, String>();
  mhs1['nama'] = 'Brilliantna Salsabila';  
  mhs1['NIM'] = '2241720041';   
  var mhs2 = Map<int, String>();
  mhs2[1] = 'Brilliantna Salsabila';  
  mhs2[2] = '2241720041';  

  print(mhs1);
  print(mhs2);

//praktikum 4 langkah 1
var list = [1, 2, 3];
var list3 = [0, ...list]; // Ganti nama list2 jadi list3
print(list);
print(list3);
print(list3.length);

//praktikum 4 langkah 3
 void main() {
  var list1 = [1, 2, null]; // List dengan elemen null
  print(list1);             // Cetak list1

  var list3 = [0, ...?list1]; // Spread operator dengan null-aware
  print(list3);               // Cetak list3
  print(list3.length);        // Cetak panjang dari list3
}

//praktikum 4 langkah 4
// var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
// print(nav);
 bool promoActive = true;  // Ubah menjadi false untuk kasus kedua
  var nav = [
    'Home',
    'Furniture',
    'Plants',
    if (promoActive) 'Outlet'
  ];
print(nav);

//praktikum 4 langkah 5
// var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
// print(nav2);
var login = 'Manager'; // Ubah nilai ini untuk kasus yang berbeda
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login == 'Manager') 'Inventory'
  ];
  print(nav2);

//praktikum 4 langkah 6
var listOfInts = [1, 2, 3];
var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
assert(listOfStrings[1] == '#1');
print(listOfStrings);

//praktikum 5 langkah 1
var record = ('first', a: 2, b: true, 'last');
print(record);

//praktikum 5 langkah 3
// (int, int) tukar((int, int) record) {
//   var (a, b) = record;
//   return (b, a);
// }
  List<int> tukar(List<int> record) {
    var a = record[0];
    var b = record[1];
    return [b, a];
  }
  // Inisialisasi List<int> untuk digunakan dengan fungsi tukar
  var intRecord = [1, 2];
  // Menukar nilai menggunakan fungsi tukar
  var swappedRecord = tukar(intRecord);
  print('Record setelah ditukar: $swappedRecord');

//praktikum 5 langkah 4
 var mahasiswa = {
    'nama': 'Brilliantna Salsabila',
    'NIM': '2241720041'
  };
// (String, int) mahasiswa;
print(mahasiswa);

//praktikum 5 langkah 5
var mahasiswa2 = ('Brilliantna Salsabila', a: 2, b: true, '2241720041');

print(mahasiswa2.$1); // Prints 'first'
print(mahasiswa2.a); // Prints 2
print(mahasiswa2.b); // Prints true
print(mahasiswa2.$2); // Prints 'last'
}



