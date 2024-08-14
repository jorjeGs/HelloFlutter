import 'package:flutter/material.dart';
import '../components/plushes_item_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context)
  {
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
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return PlushesItemTile();
                },
                ),
            )
          ],
      )),
    );
  }
}