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
          bottom: TabBar(
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
          //  Expanded(
          //   child: TabBarView(
          //     children: [
          //       Container(),
          //       Container(),
          //     ],),
          // ),
        ),
        body: Center(
          child: Text('my_ads'),
        ),
      ),
    );
  }
}
