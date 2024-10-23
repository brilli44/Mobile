import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Mengambil warna tema utama
    Color color = Theme.of(context).primaryColor;

    // Membuat buttonSection sebagai Row dengan ikon dan teks
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Membagi kolom secara merata
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // Membuat textSection dengan padding
    Widget textSection = Container(
      padding: const EdgeInsets.all(32), // Padding di sepanjang setiap tepi
      child: const Text(
        'Carilah teks di internet yang sesuai '
        'dengan foto atau tempat wisata yang ingin '
        'Anda tampilkan. '
        'Tambahkan nama dan NIM Anda sebagai '
        'identitas hasil pekerjaan Anda. '
        'Selamat mengerjakan 🙂.',
        softWrap: true, // Membungkus teks agar tidak terpotong
      ),
    );

    return MaterialApp(
      title: 'Brilliantna Salsabila / 2241720041',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Demo'),
        ),
        body: ListView( // Mengganti dari Column ke ListView agar bisa scroll jika konten banyak
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection, 
          ],
        ),
      ),
    );
  }

  // Widget titleSection untuk menampilkan judul dan ikon
  Widget get titleSection => Container(
        padding: const EdgeInsets.all(32.0), // Padding di seluruh tepi
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Posisi kolom di awal baris
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8.0), // Padding bawah
                    child: const Text(
                      'Wisata Gunung di Batu',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Text(
                    'Batu, Malang, Indonesia',
                    style: TextStyle(
                      color: Colors.grey, // Warna abu-abu
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(
                  Icons.star,
                  color: Colors.red, // Warna merah
                ),
                Text('41'),
              ],
            ),
          ],
        ),
      );

  // Fungsi untuk membuat tombol dalam kolom
  static Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8.0), // Memberikan jarak antara ikon dan teks
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
