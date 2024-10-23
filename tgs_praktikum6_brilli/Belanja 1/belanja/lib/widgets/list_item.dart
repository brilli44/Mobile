import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

// Widget ListItem untuk menampilkan grid item belanja
class ListItem extends StatelessWidget {
  final Item item;
  final VoidCallback onTap;

  const ListItem({Key? key, required this.item, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      elevation: 4,
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Hero(
              tag: 'hero-${item.name}',
              child: Container(
                height: 100,
                width: double.infinity,
                child: Image.asset(
                  item.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 4),
                  Text('Harga: Rp ${item.price}', style: const TextStyle(fontSize: 14)),
                  Text('Stok: ${item.stock}'),
                  Row(
                    children: [
                      ...List.generate(
                        item.rating.toInt(),
                        (index) => const Icon(Icons.star, color: Colors.amber, size: 16),
                      ),
                      ...List.generate(
                        5 - item.rating.toInt(),
                        (index) => const Icon(Icons.star_border, color: Colors.amber, size: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
