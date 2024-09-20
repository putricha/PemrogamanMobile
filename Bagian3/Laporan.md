## Nama : Putri Norchasana

## Kelas : TI-3D

## Praktikum 1: Eksperimen Tipe Data List

### Praktikum 1 Langkah 1

```DART
void main(){
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);
}
```

### Praktikum 1 Langkah 2

![](/img/P1L1.png)

- Menampilkan panjang list yaitu 3, karena array list berjumlah 3
- Menampilkan list index ke 1 yaitu 2
- Menampilkan list index ke yaitu 1 (Karena list pada index ini sudah di ganti dengan angka 1)

### Praktikum 1 langkah 3

Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.

```DART
  List<String?> list = [null, null, null, null, null];
  assert(list.length == 5);
  assert(list[1] == null);
  print(list.length);
  print(list[1]);
  print(list[2]);
  list[1] = ('2241720036');
  list[2] = ('Putri Norchasana');
  assert(list[1] == 1);
  print(list[1]);
  print(list[2]);
```

Hasil

![](/img/P1L3.png)

Penjelasan
Disini saya menggunakan null safety untuk menghindari error karena default valuenya adalah null, setelah itu baru menggantikan list index ke 1 dan 2 dengan nama dan nim, dapat dilihat dari hasilnya dimana list index ke 1 dan 2 sebelumnya adalah null kemudian beru berisi nim dan nama

## Praktikum 2: Eksperimen Tipe Data Set

### Praktikum 2 langkah 1

```DART
void main(){
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
}
```

### Praktikum 2 langkah 2

Hasil

![](/img/P2L1.png)

Akan menampilkan set yang berisi nama-nama unsur halogen

### Praktikum 2 langkah 3

```DART
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  print(names1);
  print(names2);
  print(names3);
```

Hasil

![](/img/P2L3.png)

Hanya akan menampilkan {} tanpa ada nilainya, karena set dan map disini cuma deklarasi

- Menambahkan nama

```DART
  names1.add('2241720036');
  names1.add('Putri Norchasana');

  var data = {'2241720036', 'Putri Norchasana'};
  names2.addAll(data);
  print(names1);
  print(names2);

```

Hasil

![](/img/P2L3A.png)

## Praktikum 3: Eksperimen Tipe Data Maps

### Praktikum 3 langkah 1

```DART
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
};

print(gifts);
print(nobleGases);

```

### Praktikum 3 langkah 2

Hasil

![](/img/P3L1.png)

Akan menampilkan data yang memiliki tipe data maps

### Praktikum 3 langkah 3

Menambahkan kode program

```DART
  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';


  print(gifts);
  print(nobleGases);
```

Hasil

![](/img/P3L3.png)

Tidak terdapat error namun pada variabel gifts['fifth] yang sebelumnya 1 menjadi golden rings kemudian nobleGases[18] yang sebelumnya 2 menjadi argon

## Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators

### Praktikum 4 langkah 1

```DART
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list1);
  print(list2);
  print(list2.length);

```

### Praktikum 4 langkah 2

Hasil

![](/img/P4L1.png)

Terjadi error karena variabel list1 undefined

Perbaikan

```DART
  void main(){
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list); //Setelah diperbaiki
  print(list2);
  print(list2.length);
}
```

Hasil dari perbaikan

![](/img/P4L1P.png)

- Menampilkan isi dari list, yaitu 1,2,3
- Menampilkan isi dari list 2 yaitu 0 kemudian ditambahkan isi dari
  variabel list
- Menampilkan panjang variabel list 2

### Praktikum 4 langkah 3

```DART
  list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);
```

Hasil

![](/img/P4L3.png)

Terjadi error karena list tidak di deklarasi dengan benar (Syntax var tidak ditulis) sehingga list 1 undefined

```DART

  var list1 = [1, 2, null];  // Perbaikan
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);

```

Hasil perbaikan

![](/img/P4L3P.png)

Menambahkan NIM

```DART
  var data = ['2241720036', 'Putri Norchasana'];
  var listTest = [0,...?data];
  print(listTest);
```

Hasil

![](/img/P4L3add.png)

### Praktikum 4 langkah 4

```DART
var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
print(nav);
```

Hasil

![](/img/P4L4.png)

Terjadi error karena promoActive tidak didekllarasi

Perbaikan

```DART
  bool promoActive = true;
  // bool promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
```

Hasil

![](/img/P4L4P.png)

Hasil yang pertama ketika promoActive bernilai true maka 'Outlet' pada sets akan ditampilkan juga, sedangkan ketika promoActive bernilai false maka 'Outlet' pada set tidak ditampilkan

### Praktikum 4 langkah 5

```DART
var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
print(nav2);
```

Hasil

![](/img/P4L5.png)

Perbaikan

```DART
 var login = 'Manager'; // Mendefinisikan variabel login

   var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];
```

Hasil

![](/img/P4L5P.png)

### Praktikum 4 langkah 6

```DART
var listOfInts = [1, 2, 3];
var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
assert(listOfStrings[1] == '#1');
print(listOfStrings);
```

Hasil

![](/img/P4L6.png)

Manfaat collection for => untuk memanipulasi item dalam suatu daftar sebelum menambahkannya ke daftar lain:

## Praktikum 5: Eksperimen Tipe Data Records

### Praktikum 5 langkah 1

```DART
  var record = ('first', a: 2, b: true, 'last');
  print(record)
```

### Praktikum 5 langkah 2

Hasil langkah 1

![](/img/P5L1.png)

Perbaikan

```DART
  var record = ('first', a: 2, b: true, 'last');
  print(record); //Menambahkan titik koma
```

Hasil perbaikan

![](/img/P5L2.png)

### Praktikum 5 langkah 3

```DART
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
```

Hasil dari praktikum bagian ini adalah tidak menghasilkan apapun, karena kode berada diluar fungsi main sehingga tidak di eksekusi

Setelah di letakkan didalam main berikut outputnya

![](/img/P5L3.png)

### Praktikum 5 langkah 4

```DART
    // Record type annotation in a variable declaration:
    (String, int) mahasiswa;
    print(mahasiswa);
```

Hasil

![](/img/P5L4.png)

Error karena mahasiswa belum di inisiasi

Perbaikan

```DART
  (String, int) mahasiswa;
  mahasiswa = ("Putri", 21);
  print(mahasiswa);
```

Hasil

![](/img/P5L4P.png)

### Praktikum 5 langkah 5

```DART
var mahasiswa2 = ('first', a: 2, b: true, 'last');
print(mahasiswa2.$1); // Prints 'first'
print(mahasiswa2.a); // Prints 2
print(mahasiswa2.b); // Prints true
print(mahasiswa2.$2); // Prints 'last'

```

Hasil

![](/img/P5L5.png)

Akan menampilkan isi dari record mahasiswa

Mengubah isi record dengan nama dan nim

```DART
  var mahasiswa2 = ('first', a: 'Putri Norchasana', b: '2241720036', 'last');

 print(mahasiswa2.$1); // Print 'first'
 print(mahasiswa2.a); // Print Putri Norchasana
 print(mahasiswa2.b); // Print 2241720036
 print(mahasiswa2.$2); // Print 'last'
```

Hasil

![](/img/P5L5A.png)

## Tugas Praktikum

1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!

2. Jelaskan yang dimaksud Functions dalam bahasa Dart!
   Functions dalam bahasa Dart adalah blok kode yang dapat dipanggil untuk menjalankan tugas tertentu. Fungsi dapat memiliki parameter dan nilai balik, atau bisa juga tanpa keduanya.

3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!

- Positional Parameters (Parameter Posisi): Parameter yang harus diberikan secara berurutan saat memanggil fungsi.

  ```DART
  void greet(String name, int age) {
  print("Hello $name, you are $age years old.");
  }
  greet("John", 25);  // Output: Hello John, you are 25 years old.
  ```

- Optional Positional Parameters (Parameter Posisi Opsional): Parameter yang tidak wajib diisi saat memanggil fungsi. Dideklarasikan menggunakan tanda kurung siku [].

  ```DART
    void greet(String name, [String? message]) {
    print("Hello $name, ${message ?? 'Welcome!'}");
  }

  greet("John");        // Output: Hello John, Welcome!
  greet("John", "Hi");  // Output: Hello John, Hi
  ```

- Named Parameters (Parameter Bernama): Parameter yang bisa diisi secara tidak berurutan dengan menyebutkan namanya, dideklarasikan menggunakan tanda kurung kurawal {}.

  ```DART
      void greet({required String name, int age = 18}) {
        print("Hello $name, you are $age years old.");
      }

      greet(name: "John");       // Output: Hello John, you are 18 years old.
      greet(name: "John", age: 25); // Output: Hello John, you are 25 years old.
  ```

- Optional Named Parameters (Parameter Bernama Opsional): Sama seperti parameter bernama, namun tidak wajib diisi dan dapat memiliki nilai default.

  ```DART
  void greet({String name = "Guest", int? age}) {
    print("Hello $name, age ${age ?? 'unknown'}.");
  }

  greet();                // Output: Hello Guest, age unknown.
  greet(name: "Alice");   // Output: Hello Alice, age unknown.

  ```

4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!

- Function sebagai first class adalah fungsi dapat diperlakukan seperti objek lain. Fungsi bisa disimpan dalam variabel, dikirim sebagai argumen ke fungsi lain, atau dikembalikan dari fungsi lain

  ```DART
  Function multiplyBy(int n) {
    return (int x) => x * n;
  }

  var triple = multiplyBy(3);
  print(triple(4));  // Output: 12

  ```

5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!

   Anonymous Functions (fungsi anonim) adalah fungsi yang tidak memiliki nama dan biasanya digunakan untuk operasi sederhana yang hanya dipanggil sekali. Fungsi ini sering digunakan sebagai argumen di fungsi lain

   Contoh fungsi anonim dalam operasi list

   ```DART
   var numbers = [1, 2, 3, 4, 5];

     numbers.forEach((number) {
       print(number * 2);
     });

     // Output:
     // 2
     // 4
     // 6
     // 8
     // 10

   ```

6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan conto
   hnya!

- Lexical scope adalah aturan dimana variabel hanya dapat diakses di lingkungan(scope) dimana variabel tersebut di definisikan

Contoh :

```DART
      int globalVar = 10;
      void myFunction() {
      int localVar = 5;
      print(globalVar); // Output: 10
      print(localVar);  // Output: 5
    }
    myFunction();
```

    GlobalVar berada di cakupan global dan bisa diakses di dalam myFunction. Namun, localVar hanya bisa diakses di dalam myFunction karena berada di dalam cakupan lokal.

  - Lexical closures memungkinkan fungsi untuk menyimpan referensi ke variabel di lingkup luar yang sudah selesai dieksekusi, dan tetap menggunakannya saat fungsi tersebut dipanggil.

Contoh :

```DART
  Function makeAdder(int x) {
  return (int y) => x + y;
}

  void main() {
  var addFive = makeAdder(5);
  print(addFive(3));  // Output: 8
}
```

Dalam contoh ini, fungsi anonim (int y) => x + y adalah sebuah closure karena ia "menutup" variabel x dari lingkup luar. Meskipun fungsi makeAdder telah dieksekusi, variabel x tetap bisa diakses oleh fungsi addFive.

7. Jelaskan dengan contoh cara membuat return multiple value di Functions!

```DART
 (String, int, String) getBiodata() {
    return ('Putri', 21, '2241720036');
  }

  var (name, age, nim) = getBiodata();

  print('Name  :$name');
  print('Age   :$age');
  print('NIM   :$nim');
```
