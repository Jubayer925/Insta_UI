import 'package:flutter/material.dart';
import 'package:insta_ui/utils/shop_grid.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: EdgeInsets.all(8.00),
            color: Colors.grey[300],
            child: Row(
              children: [
                Icon(Icons.search,color: Colors.grey[500],),
                SizedBox(width: 5,),
                Text("Search",style: TextStyle(color: Colors.grey[500]),)
              ],
            ),
          ),
        ),
      ),
      body: ShopGrid(),
    );
  }
}
