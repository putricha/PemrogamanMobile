import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Here we can define leftColumn as a method instead of a variable
    Widget leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          description(),
          ratings(),
          iconList(),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter Layout Tugas 2',
      home: Scaffold(
        body: Center(
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
            height: 600,
            child: Card(
              child: Row(
                children: [
                  SizedBox(
                    width: 440,
                    child: leftColumn,
                  ),
                  Image.asset(
                    'assets/images/cake.jpg',
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Move description, ratings, and iconList to methods
  Widget description() {
    return const Column(
      children: [
        Text(
          'Strawberry Pavlova',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          // Centers the description text
        ),
        SizedBox(
            height: 10),
        Text(
          'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp, crust, and soft, light inside, topped with fruit and whipped cream',
          textAlign: TextAlign.center, // Centers the description text
        ),
      ],
    );
  }

  Widget ratings() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, color: Colors.green[500]),
              Icon(Icons.star, color: Colors.green[500]),
              Icon(Icons.star, color: Colors.green[500]),
              Icon(Icons.star, color: Colors.black),
              Icon(Icons.star, color: Colors.black),
            ],
          ),
          const Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget iconList() {
    return DefaultTextStyle.merge(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                const Text('PREP:'),
                const Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                const Text('COOK:'),
                const Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                const Text('FEEDS:'),
                const Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
