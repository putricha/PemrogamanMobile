> Nama : Putri Norchasana
>
> Kelas : TI-3D

Hasil praktikum 1 langkah 1

![](img\praktikum1langkah1.png)

Hasil praktikum 1 langkah 3
![](img\praktikum1langkah3.png)

```DART
String test = "true";
if(test)
{
     print("Kebenaran");
}
```

Terjadi error karena test disini bertipe data string sedangkan pada kondisi diatas test bertipe data boolean

Perbaikan

```DART
  String test1 = "true";
  if (test1 == "true") {
    print("Kebenaran");
  }

  bool test2 = true;

  if (test2) {
    print("Kebenaran");
  }
```

Hasil Perbaikan

![](img\perbaikanPraktikum1.png)

Disini sayan menggunakan 2 perbaikan, yang pertama saya menggunakan value test yang bertipe string kemudian yang kedua saya menggunakan value test yang bertipe boolean sehingga untuk pengecekan kondisi juga berbeda syntaxnya.

Hasil praktikum 2 langkah 1
![](img\praktikum2langkah1.png)

Hasil praktikum 2 langkah 3
![](img\praktikum2langkah3.png)

Terjadi error karena variabel counter belum di deklarasi

Perbaikan perulangan while

```DART
   int counter = 0;
   while (counter < 33) {
     print(counter);
     counter++;
   }
```

Hasil perbaikan perulangan while
![](img\perbaikanPraktikum2.1.png)


Perbaikan perulangan do while

```DART
     int counter = 1;
      do {
    print(counter);
    counter++;
  } while (counter < 77);
```

Hasil perbaikan perulangan do while
![](img\perbaikanPraktikum2.2.png)

Praktikum 3 langkah 1

```DART
   for (Index=10;index<27;index++){
   print(Index);
 }
```

![](img\praktikum3langkah1.png)
Terjadi error undefine name index karen tipe data variabel tidak di deklarasi

Perbaikan

```DART
  for (int index = 10; index < 27; index++) {
    print(index);
  }
```

Hasil perbaikan
![](img\perbaikanPraktikum3.png)

Praktikum 3 langkah 3

```DART

for (int index=10;index<27;index++){
If (index == 21) break;
  Else If (index > 1 || index < 7) continue;
  print(index);
}
```
![](img\praktikum3langkah3.png)
Terjadi error dalam penulisan syntax yaitu penulisan else if menggunakan huruf kapital dan terdapat dead code yang menunjukan bahwa kode tidak akan pernah dijalankan  

```DART
// Perbaikan
for (int index = 10; index < 27; index++) {
  if (index == 21) {
    break;
  } else if (index > 1 || index < 7) {
    continue;
  }
  print(index);
}
```
Hasil perbaikan

![](img\perbaikanPraktikum3.png)


>TUGAS PRAKTIKUM
Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.

```DART
void main() {
  for (int i = 0; i <= 201; i++) {
    if (i % 2 == 1 || i == 2 || i == 1) {
      print('Bilangan prima : $i  NIM : 2241720036');
    }
  }
}
```
Hasil tugas praktikum

![](img\tugasPraktikum.png)

