// ignore_for_file: prefer_const_constructors

import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';
import 'package:belanja/pages/home_page.dart';


void main() {
  runApp(MaterialApp(initialRoute: '/', routes: {
    '/': (context) => HomePage(),
    '/item': (context) => ItemPage(),
  }));
}


// Versi menggunakan go route

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   MyApp({super.key});

//   // Definisikan semua routes di sini
//   final GoRouter _router = GoRouter(
//     routes: [
//       GoRoute(
//         path: '/',
//         builder: (context, state) => HomePage(),
//       ),
//       GoRoute(
//         path: '/item',
//         builder: (context, state) {
//           final item =
//               state.extra as Item; // Menerima objek Item sebagai argumen
//           return ItemPage(item: item);
//         },
//       ),
//     ],
//   );

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       routerConfig: _router, // Atur routerConfig dengan GoRouter
//     );
//   }
// }
