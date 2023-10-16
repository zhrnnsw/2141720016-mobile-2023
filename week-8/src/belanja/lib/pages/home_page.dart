import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000),
  ];

  @override
  Widget build(BuildContext context){
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
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context,index){
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item',arguments: item);
              },
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                          )
                      )
                    ],
                  ),
                ),
              ),
            );
          }
        ),
        
      ),
      
    );
  }
}