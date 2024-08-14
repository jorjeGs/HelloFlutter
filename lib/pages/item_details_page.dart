import 'package:flutter/material.dart';
import 'package:helloflutter/components/plushes_item_tile.dart';
import 'package:provider/provider.dart';
import '../model/cart_model.dart';

class ItemDetailsPage extends StatefulWidget{
  final int id;

  const ItemDetailsPage({
    super.key,
    required this.id,
  });

  @override
  _ItemDetailsPageState createState() => _ItemDetailsPageState();
}

class _ItemDetailsPageState extends State<ItemDetailsPage> {
  late Future<PlushesItemTile> item;


  @override
  void initState() {
    super.initState();
    item = Future.delayed(Duration(seconds: 2), () => getItemDetails(widget.id));
  }

  Future<PlushesItemTile> getItemDetails(int id) async {
    //get the item from the cart model
    var cartModel = context.read<CartModel>();
    var item = await cartModel.getItem(id);

    return item;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<PlushesItemTile>(
        future: item,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: snapshot.data!.color,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Image.asset(
                      snapshot.data!.itemImage,
                      width: 300,
                      height: 300,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    snapshot.data!.itemName,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    //with the $ sign
                    '\$${snapshot.data!.itemPrice}',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //button to add to cart
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // cartModel.addItem(snapshot.data!);
                      // show a notification
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Row(
                            children: [
                              Icon(Icons.check),
                              SizedBox(width: 10),
                              Text('Item added to cart'),
                            ],
                          ),
                          backgroundColor: Colors.green,
                        ),
                      );
                    },
                    child: Text('Add to Cart'),
                  ),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

            return Center(
            child: CircularProgressIndicator(),
            );
        },
      ),
    );
  }
}