import 'package:flutter/material.dart';
import 'package:insta_ui/utils/item_grid.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Search in Appbar
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
      body: ItemGrid(),
    );
  }
}
