import 'package:flutter/material.dart';
import 'package:insta_ui/utils/bubblestories.dart';
import 'package:insta_ui/utils/public_posts.dart';

class Home extends StatelessWidget {
   Home({super.key});

  final List persons = ["Jubayer","Jubo","Ashik","Shamim","Auvro","Jaka","Tarik"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //AppBar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Instagram", style: TextStyle(color: Colors.black),),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share)
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          //Stories
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: persons.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Bubblestories(text: persons[index]);
                }),
          ),
          //Posts
          Expanded(
            child: ListView.builder(
              itemCount: persons.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return PublicPosts(profilename: persons[index]);
                }),
          )

        ],
      ),
    );
  }
}
