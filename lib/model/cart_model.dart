import 'package:flutter/material.dart';
import 'package:helloflutter/components/plushes_item_tile.dart';

class CartModel extends ChangeNotifier {

  var items = <PlushesItemTile>[
      PlushesItemTile(
        id: 1,
        itemName: 'Hello Kitty',
        itemPrice: '20',
        itemImage: 'lib/images/kitty.png',
        color: Colors.pink,
      ),
      PlushesItemTile(
        id: 2,
        itemName: 'Kuromi',
        itemPrice: '25',
        itemImage: 'lib/images/kuromi.png',
        color: Colors.purple,
      ),
      PlushesItemTile(
        id: 3,
        itemName: 'My Melody',
        itemPrice: '30',
        itemImage: 'lib/images/melody.png',
        color: Colors.pink,
      ),
      PlushesItemTile(
        id: 4,
        itemName: 'Cinnamoroll',
        itemPrice: '15',
        itemImage: 'lib/images/chilemorron.png',
        color: Colors.blue,
      ),
    ];

  List<PlushesItemTile> getItems () => items;

  Future<PlushesItemTile> getItem(int id) async {
    return items.firstWhere((element) => element.id == id);
  }

}