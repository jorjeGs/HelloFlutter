import 'package:flutter/material.dart';


class PlushesItemTile extends StatelessWidget{
  final String itemName;
  final String itemPrice;
  final String itemImage;
  final color;

  const PlushesItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.itemImage,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset('lib/images/plush1.png'),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Hello Kitty',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Precio: \$20',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }

}