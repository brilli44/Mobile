import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemDetailPage extends StatelessWidget {
  final Item item;

  const ItemDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: 'hero-${item.name}',
              child: Image.asset(item.imageUrl, height: 200, width: double.infinity, fit: BoxFit.cover),
            ),
            const SizedBox(height: 16),
            Text(
              item.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Harga: Rp ${item.price}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              'Stok: ${item.stock}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                ...List.generate(
                  item.rating.toInt(),
                  (index) => const Icon(Icons.star, color: Colors.amber, size: 24),
                ),
                ...List.generate(
                  5 - item.rating.toInt(),
                  (index) => const Icon(Icons.star_border, color: Colors.amber, size: 24),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              item.description,
              style: const TextStyle(fontSize: 16),
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${item.name} telah ditambahkan ke keranjang belanja')),
                );
              },
              child: const Text('Tambah ke Keranjang'),
            ),
          ],
        ),
      ),
    );
  }
}
