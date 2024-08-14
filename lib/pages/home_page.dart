import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/plushes_item_tile.dart';
import '../model/cart_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context)
  {
    var cartModel = context.watch<CartModel>();
    var items = cartModel.getItems();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            
            SizedBox(height: 40,),

            //welcome text
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Bienvenido",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),

            SizedBox(height: 20,),
            //categories
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Ultimos agregados",
                style: TextStyle(
                    fontSize: 20,
                  ),
                ),
            ),

            Expanded(
                child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: PlushesItemTile(
                    id: items[index].id,
                    itemName: items[index].itemName,
                    itemPrice: items[index].itemPrice,
                    itemImage: items[index].itemImage,
                    color: items[index].color
                  ),
                  );
                },
                ),
            )
          ],
      )),
    );
  }
}