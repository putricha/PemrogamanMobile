# Nama : Putri Norchasana

# Kelas : TI-3D

# NIM : 2241720036

# Tugas Praktikum 1

### 1. Menyelesaikan Praktikum 1-4

Hasil :

![](/layout_flutter/img/P1-P4.png)

### 2. Implementasikan di project baru "basic_layout_flutter"

Hasil :

![](/tugas_2/img/tugas_2.png)

## Praktikum 5

### Langkah 1 : Membuat Projek Belanja

### Langkah 2 : Mendefinisikan Route

Route Home Page

```DART
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
```

Route Item Page

```DART
 import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget{
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
```

### Langkah 3 : Lengkapi main.dart

```DART
import 'package:belanja/pages/home_page.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const HomePage(),
      '/item': (context) => const ItemPage(),
    }
  ));
}
```

### Langkah 4: Membuat Data Model

```DART
class Item {
  String? name;
  int? price;

  Item({this.name, this.price});
}

```

### Langkah 5 : Lengkapi Kode di Class HomePage

```DART
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000),
  ];
```

### Membuat ListView dan itemBuilder

```DART
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Belanja')),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Card(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/item');
                },
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name!)),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
```

### Langkah 7 Menambahkan aksi pada list view

```DART
return InkWell(
onTap: () {
Navigator.pushNamed(context, '/item');
}),
```

### Hasil

![](/belanja/img/P5.png)

Setelah di klik
![](/belanja/img/P5.1.png)

# Tugas Praktikum 2

1. Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan Navigator. Perbarui kode pada bagian Navigator menjadi seperti berikut.

```DART
 onTap: () {
   Navigator.pushNamed(context, '/item', arguments: item);
 }
```

2. Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan ModalRoute. Tambahkan kode berikut pada blok fungsi build dalam halaman ItemPage. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya.

```DART
final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
```

```DART
import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
 const ItemPage({super.key});

 @override
 Widget build(BuildContext context) {
   final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

   return Scaffold(
     appBar: AppBar(title: Text(itemArgs.name!)),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text('Nama: ${itemArgs.name}'),
           Text('Harga: ${itemArgs.price}'),
         ],
       ),
     ),
   );
 }
}
```

### Hasil

![](/belanja/img/P5.png)

Setelah di klik

![](/belanja/img/P5M1.png)

3. Pada hasil akhir dari aplikasi belanja yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi GridView seperti di aplikasi marketplace pada umumnya.

- Grid View

```DART
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Salt',
      price: 5000,
      imageUrl: 'assets/images/garam.png',
      stock: 10,
      rating: 5,
    ),
    Item(
      name: 'Sugar',
      price: 15000,
      imageUrl: 'assets/images/gulaku.jpg',
      stock: 20,
      rating: 4.7,
    ),
    Item(
      name: 'Salt',
      price: 5000,
      imageUrl: 'assets/images/garam.png',
      stock: 10,
      rating: 5,
    ),
    Item(
      name: 'Sugar',
      price: 15000,
      imageUrl: 'assets/images/gulaku.jpg',
      stock: 20,
      rating: 4.7,
    ),
    Item(
      name: 'Salt',
      price: 5000,
      imageUrl: 'assets/images/garam.png',
      stock: 10,
      rating: 5,
    ),
    Item(
      name: 'Sugar',
      price: 15000,
      imageUrl: 'assets/images/gulaku.jpg',
      stock: 20,
      rating: 4.7,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List of Items"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah kolom
          childAspectRatio: 0.8, // Rasio lebar terhadap tinggi
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              // Navigasi ke halaman ItemPage
              Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: Card(
              child: Column(
                children: [
                  Hero(
                    tag: item.imageUrl!, // Tag untuk hero animation
                    child: Image.network(
                      item.imageUrl!,
                      fit: BoxFit.cover,
                      height: 180,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(item.name!),
                  ),
                  Text('Price: Rp.${item.price}'),
                  Text('Stock: ${item.stock}'),
                  Text('Rating: ${item.rating} ★'),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Nama: Putri Norchasana | NIM: 2241720036',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

```

![](/belanja/img/P5M2.png)
![](/belanja/img/P5M4.png)
![](/belanja/img/P5M5.png)

4. Silakan implementasikan Hero widget pada aplikasi belanja Anda

```DART
               Hero(
                    tag: item.imageUrl, // Tag untuk hero animation
                    child: Image.network(
                      // Gunakan Image.network untuk memuat gambar dari URL
                      item.imageUrl,
                      fit: BoxFit.cover,
                      height: 180,
                      width: double.infinity,
                    ),
                  ),
```

5. Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi belanja Anda.

![](/belanja/img/P5M3.png)

6. Selesaikan Praktikum 5: Navigasi dan Rute tersebut. Cobalah modifikasi menggunakan plugin go_router, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!

- Tambah dependency

```DART
dependencies:
  flutter:
    sdk: flutter
go_router: ^9.0.0
```

- Modifikasi main.dart

```DART
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/pages/home_page.dart';
import 'package:belanja/pages/item_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: '/item',
        builder: (context, state) {
          final item = state.extra as Item;
          return ItemPage(item: item);
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}

```

- Modiikasi widget pada home_page.dart

```DART
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List of Items")),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              // Navigasi menggunakan go_router dengan extra parameter
              context.push('/item', extra: item);
            },
            child: Card(
              child: Column(
                children: [
                  Hero(
                    tag: item.imageUrl!,
                    child: Image.network(
                      item.imageUrl!,
                      fit: BoxFit.cover,
                      height: 300,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(item.name!),
                  ),
                  Text('Price: \$${item.price}'),
                  Text('Stock: ${item.stock}'),
                  Text('Rating: ${item.rating} ★'),
                ],
              ),
            ),
          );
        },
      ),
    );
          bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Nama: Putri Norchasana | NIM: 2241720036',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
  }

```

- Modifikasi item_page.dart

```DART
class ItemPage extends StatelessWidget {
  final Item item; // Tambahkan parameter untuk menerima item

  const ItemPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: item.imageUrl!,
              child: Image.network(
                item.imageUrl!,
                fit: BoxFit.cover,
                height: 300,
                width: double.infinity,
              ),
            ),
            Text('Nama: ${item.name}'),
            Text('Harga: ${item.price}'),
            Text('Stock: ${item.stock}'),
            Text('Rating: ${item.rating} ★'),
          ],
        ),
      ),
    );
  }
}
```
