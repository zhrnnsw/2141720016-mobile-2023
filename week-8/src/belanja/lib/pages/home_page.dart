import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/daftar_item_widget.dart';
import 'package:belanja/widgets/footer_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Rice',
        price: 41400,
        image: 'assets/images/rice.jpg',
        stok: 8,
        rating: 4.5),
    Item(
        name: 'Cotton Buds',
        price: 7000,
        image: 'assets/images/cotton_buds.jpg',
        stok: 19,
        rating: 4.3),
    Item(
        name: 'Shampoo',
        price: 17000,
        image: 'assets/images/shampoo.jpg',
        stok: 12,
        rating: 3.8),
    Item(
        name: 'Honey',
        price: 19500,
        image: 'assets/images/honey.jpg',
        stok: 20,
        rating: 4.7),
    Item(
        name: 'Tooth Brush',
        price: 16500,
        image: 'assets/images/tooth_brush.jpg',
        stok: 26,
        rating: 4.6),
    Item(
        name: 'Bread',
        price: 6000,
        image: 'assets/images/bread.jpg',
        stok: 54,
        rating: 4.7),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: ItemGrid(items: items),
      bottomNavigationBar: FooterWidget()
    );
  }
}
