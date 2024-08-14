import 'dart:developer';
import 'package:helloflutter/pages/item_details_page.dart';
import 'package:flutter/material.dart';


class PlushesItemTile extends StatelessWidget{
  final int id;
  final String itemName;
  final String itemPrice;
  final String itemImage;
  final Color color;

  const PlushesItemTile({
    super.key,
    required this.id,
    required this.itemName,
    required this.itemPrice,
    required this.itemImage,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
        builder: (context) => ItemDetailsPage(
          id: id,
        ),
      ),
      );
      log('Item $itemName was tapped');
      },
      child: Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Image.asset(
              itemImage,
              width: 100,
              height: 100,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                '\$$itemPrice',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      )
    ),
    );
  }

}