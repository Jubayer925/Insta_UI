import 'package:flutter/material.dart';

class PublicPosts extends StatelessWidget {

  final String profilename;
  PublicPosts({required this.profilename});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(width: 10,),
                Container(
                  height: 40, width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[400]
                  ),
                ),
                SizedBox(width: 5,),
                Text(profilename, style: TextStyle(fontWeight: FontWeight.bold),)
                ]
            ),
            Row(
              children: [
                Icon(Icons.menu),
                SizedBox(width: 10,)
              ],
            )
          ],
        ),
        SizedBox(height: 10,),
        Container(
          height: 350,
          decoration: BoxDecoration(
            color: Colors.grey[400]
          ),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(width: 10,),
                Icon(Icons.favorite, color: Colors.grey[700],),
                SizedBox(width: 10,),
                Icon(Icons.comment, color: Colors.grey[500],),
                SizedBox(width: 10,),
                Icon(Icons.share, color: Colors.grey[500],)
              ],
            ),
            Row(
              children: [
                Icon(Icons.bookmark, color: Colors.grey[700],),
                SizedBox(width: 10,)
              ],
            )
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            SizedBox(width: 10,),
            Text("Liked by "),
            Text("Mitch_Kokko ", style: TextStyle(fontWeight: FontWeight.bold),),
            Text("and "),
            Text("others ", style: TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        SizedBox(height: 20,)
      ],
    );
  }
}
