import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  List<String> _catagories = [
    'Food',
    'Electronics',
    'Gloceries',
    'Dress',
    'Car',
    'Bike',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello Zakaria',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Text(
                'Lets gets something',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 30,
              ),

              //pageview
              //listview
              //songlechildscrollview

              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 120,
                      width: 280,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '40% Off During\nEid-Ul-Adha',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                           // Image.asset('assets/photo.png'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 120,
                      width: 280,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '10% Extra Off\nUsing Credit Card',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue),
                            ),
                            //Image.asset('assets/photo.png'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 120,
                      width: 280,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Click here For\n Best Discount',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black26),
                            ),
                            //Image.asset('assets/photo.png'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Catagories',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _catagories.length,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Center(
                              child: Text(
                                _catagories[index],
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(color: Colors.grey),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -20,
                      right: 50,
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
