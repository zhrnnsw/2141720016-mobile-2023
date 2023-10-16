import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  ItemPage({required this.item});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
          title: Text('Detail Item'), // Judul AppBar
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '${item.name} with ${item.price}'
                )
              ],
            ),
          ),
        );
  }
}