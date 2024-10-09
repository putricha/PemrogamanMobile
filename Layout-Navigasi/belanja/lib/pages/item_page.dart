// Versi awal
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  // Constructor with named parameters including key
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(title: Text(itemArgs.name!)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: itemArgs.imageUrl, // Tag untuk hero animation
              child: Image.network(
                // Gunakan Image.network untuk memuat gambar dari URL
                itemArgs.imageUrl,
                fit: BoxFit.fill,
                height: 500,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(itemArgs.name),
            ),
            Text('Price: Rp.${itemArgs.price}'),
            Text('Stock: ${itemArgs.stock}'),
            Text('Rating: ${itemArgs.rating} ★'),
          ],
        ),
      ),
    );
  }
}


// class ItemPage extends StatelessWidget {
//   final Item item; // Tambahkan parameter untuk menerima item

//   const ItemPage({super.key, required this.item});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(item.name!),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Hero(
//               tag: item.imageUrl!,
//               child: Image.network(
//                 item.imageUrl!,
//                 fit: BoxFit.cover,
//                 height: 300,
//                 width: double.infinity,
//               ),
//             ),
//             Text('Nama: ${item.name}'),
//             Text('Harga: ${item.price}'),
//             Text('Stock: ${item.stock}'),
//             Text('Rating: ${item.rating} ★'),
//           ],
//         ),
//       ),
//     );
//   }
// }
