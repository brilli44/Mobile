import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card ',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Card '),
        ),
        body: Center(
          child: _buildCard(),
        ),
      ),
    );
  }

  Widget _buildCard() {
    return SizedBox(
      height: 210, // Mengatur tinggi Card
      child: Card(
        elevation: 4, // Mengatur elevasi untuk bayangan
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Mengatur sudut Card
        ),
        child: Column(
          children: [
            ListTile(
              title: const Text(
                '1625 Main Street',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: const Text('My City, CA 99984'),
              leading: Icon(
                Icons.restaurant_menu,
                color: Colors.blue[500],
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                '(408) 555-1212',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),
            ListTile(
              title: const Text('brilli04@example.com'),
              leading: Icon(
                Icons.contact_mail,
                color: Colors.blue[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
