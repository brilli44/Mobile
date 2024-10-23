import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:belanja/widgets/list_item.dart';
import 'package:go_router/go_router.dart';

// Pastikan untuk membuat file ini
class HomePage extends StatelessWidget {
  static final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 13000,
      stock: 50,
      rating: 5,
      imageUrl: 'images/pict2.jpg',
      description: 'Sugar is a sweet ingredient used in baking and beverages.',
    ),
    Item(
      name: 'Flour',
      price: 8000,
      stock: 30,
      rating: 4.7,
      imageUrl: 'images/pict3.jpg',
      description: 'Flour is a key ingredient in making bread, cakes, and cookies.',
    ),
    Item(
      name: 'Salt',
      price: 2000,
      stock: 10,
      rating: 3.5,
      imageUrl: 'images/pict4.jpg',
      description: 'Salt is an essential seasoning in cooking.',
    ),
    Item(
      name: 'Potato',
      price: 10000,
      stock: 15,
      rating: 4.5,
      imageUrl: 'images/pict1.jpg',
      description: 'Potatoes are versatile vegetables used in various dishes.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belanja Store'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 3 / 4,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListItem(
                  item: items[index],
                  onTap: () {
                    context.go('/item/${items[index].name}');
                  },
                );
              },
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}

// Widget Footer menampilkan Nama dan NIM
class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      color: Colors.blueGrey[50],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            'Brilliantna Salsabila | NIM : 2241720041',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
