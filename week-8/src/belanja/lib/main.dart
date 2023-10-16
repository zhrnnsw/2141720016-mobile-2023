import 'package:belanja/models/item.dart';
import 'package:belanja/pages/home_page.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
      routes: {
        '/':(context) => HomePage(),
        '/item':(context) {
          final item = ModalRoute.of(context)!.settings.arguments as Item;
          return ItemPage(item: item);
        }
      },
  ));
}





