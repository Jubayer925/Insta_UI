import 'package:flutter/material.dart';
import 'package:insta_ui/utils/bubblestories.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("Acount", style: TextStyle(fontWeight: FontWeight.w500),),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100, width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle
                    ),
                  ),
                  Column(
                    children: [
                      Text("250",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Posts")
                    ],
                  ),
                  Column(
                    children: [
                      Text("599",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Followers")
                    ],
                  ),
                  Column(
                    children: [
                      Text("120",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Following")
                    ],
                  )
                ],
                
              ),
      
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Jubayer Hossain Hridoy", style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("I create mobile apps"),
                    Text("m.youtube.com/jubayer",style: TextStyle(color: Colors.blue),)
      
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 20,),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Center(child: Text("Edit Profile")),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Center(child: Text("Ad Tolls")),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Center(child: Text("Insights")),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20,)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 20,),
                Bubblestories(text: "Story 1"),
                Bubblestories(text: "Story 2"),
                Bubblestories(text: "Story 3"),
                Bubblestories(text: "Story 4"),
              ],
            ),
            TabBar(tabs: [
              Tab(icon: Icon(Icons.grid_3x3_outlined)),
              Tab(icon: Icon(Icons.video_call)),
              Tab(icon: Icon(Icons.shop)),
              Tab(icon: Icon(Icons.person))
            ])
          ],
        ),
      ),
    );
  }
}
