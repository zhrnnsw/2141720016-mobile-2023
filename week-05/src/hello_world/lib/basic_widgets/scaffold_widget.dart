import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final String title;
  final int counter;
  final VoidCallback onIncrement;
  final Widget body; // Tambahkan parameter body sebagai Widget

  const CustomScaffold({
    Key? key,
    required this.title,
    required this.counter,
    required this.onIncrement,
    required this.body, // Inklusikan parameter body dalam konstruktor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: body, // Gunakan body yang di-passing
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onIncrement,
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
