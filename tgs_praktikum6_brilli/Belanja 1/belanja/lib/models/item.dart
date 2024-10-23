class Item {
  final String name;
  final int price;
  final int stock;
  final double rating;
  final String imageUrl;
  final String description;

  Item({
    required this.name,
    required this.price,
    required this.stock,
    required this.rating,
    required this.imageUrl,
    required this.description,
  });
}

List<Item> items = [
  Item(
    name: 'Sugar',
    price: 13000,
    stock: 50,
    rating: 5,
    imageUrl: 'images/pict2.jpg',
    description: 'A sweet ingredient for baking and beverages.',
  ),
  Item(
    name: 'Flour',
    price: 8000,
    stock: 30,
    rating: 4.7,
    imageUrl: 'images/pict3.jpg',
    description: 'Used to bake bread, cakes, and cookies.',
  ),
  // Tambahkan barang lainnya
];
