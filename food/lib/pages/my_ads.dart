import 'package:flutter/material.dart';

class MyAds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Center(
            child: Text(
              "MY ADS",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: Column(
          children: [
            TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  text: "My Ads",
                ),
                Tab(
                  text: "My Favorite",
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
                child: TabBarView(children: [
              Container(
                child: Column(
                  children: [
                    Card(
                      elevation: 5,
                      child: ListTile(
                        leading: Image.asset('assets/photo.png'),
                        title: Text("Apple Watch"),
                        subtitle: Text("Series 8"),
                        trailing: Text("\$800"),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      child: ListTile(
                        leading: Image.asset('assets/photo.png'),
                        title: Text("Apple Watch"),
                        subtitle: Text("Series 8"),
                        trailing: Text("\$800"),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      child: ListTile(
                        leading: Image.asset('assets/photo.png'),
                        title: Text("Apple Watch"),
                        subtitle: Text("Series 8"),
                        trailing: Text("\$800"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.red,
              )
            ]))
          ],
        ),
      ),
    );
  }
}
