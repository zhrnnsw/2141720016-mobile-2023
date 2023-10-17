import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      image: 'assets/images/sugar.jpg',
    ),
    Item(
      name: 'Sugar',
      price: 5000,
      image: 'assets/images/sugar.jpg',
    ),
    Item(
      name: 'Sugar',
      price: 5000,
      image: 'assets/images/sugar.jpg',
    ),
    Item(
      name: 'Sugar',
      price: 5000,
      image: 'assets/images/sugar.jpg',
    ),
    Item(
      name: 'Sugar',
      price: 5000,
      image: 'assets/images/sugar.jpg',
    ),
    Item(
      name: 'Sugar',
      price: 5000,
      image: 'assets/images/sugar.jpg',
    ),
    Item(
      name: 'Sugar',
      price: 5000,
      image: 'assets/images/sugar.jpg',
    ),
    Item(
      name: 'Sugar',
      price: 5000,
      image: 'assets/images/sugar.jpg',
    ),
    Item(
      name: 'Sugar',
      price: 5000,
      image: 'assets/images/sugar.jpg',
    ),
    Item(
      name: 'Sugar',
      price: 5000,
      image: 'assets/images/sugar.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key('home_page'),
      appBar: AppBar(
        title: Text('Shopping List'),
        actions: const <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Zahra Annisa W'),
              Text('2141720016'),
            ],
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisExtent: 250,
            ),
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/item', arguments: item);
                },
                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset(item.image)
                          ),
                        Expanded(
                          child: Text(item.name)
                          ),
                        Expanded(
                            child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        ))
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
