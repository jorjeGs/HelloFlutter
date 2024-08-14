import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _items = [
    {
      'name': 'Hello Kitty',
      'price': 20,
      'image': 'lib/images/kitty.png',
      'color': Colors.pink,
    },
    {
      'name': 'Melody',
      'price': 25,
      'image': 'lib/images/melody.png',
      'color': Colors.green,
    },
    {
      'name': 'Kuromi',
      'price': 30,
      'image': 'lib/images/kuromi.png',
      'color': Colors.red,
    },
    {
      'name': 'Cinnamoroll',
      'price': 15,
      'image': 'lib/images/chilemorron.png',
      'color': Colors.yellow,
    },
  ];



  get items => _items;

}