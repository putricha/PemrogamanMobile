import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Pantai Modangan adalah sebuah pantai di pesisir selatan Pulau Jawa secara administratif masuk daerah Dusun Kalitekuk, Desa Sumberoto, Kecamatan Donomulyo, yang merupakan pantai paling ujung selatan barat Kabupaten Malang, Jawa Timur, Pantai ini terletak sekitar 65 km sebelah barat daya Kota Malang. Di pantai inilah tempat bermuaranya sungai yang menjadi batas alam yang memisahkan antara Kabupaten Blitar dan Kabupaten Malang. Perbatasan itu ditandai dengan sebuah tugu kecil yang terletak di tepi sebuah sungai yang juga bernama Sungai Modangan. Pantai Modangan memang berhimpitan langsung dengan Pantai Jolosutro di Kecamatan Wates, Kabupaten Blitar. Pengunjung harus menempuh jalan yang sangat berliku jika ingin ke Pantai Modangan.\n\n'
        'Putri Norchasana - 2241720036',
        softWrap: true,
      ),
    );
    // Add the titleSection widget here
    return MaterialApp(
      title: 'Flutter layout: Putri Norchasana 2241720036',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/pantai.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection, // Adding titleSection to the body
            buttonSection,
            textSection
          ],
        ),
      ),
    );
  }

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          /* soal 1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* soal 2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Wisata Pantai di Malang',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                'Donomulyo, Malang, Indonesia',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        /* soal 3*/
        const Icon(
          Icons.star,
          color: Colors.red,
        ),
        const Text('41'),
      ],
    ),
  );

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
