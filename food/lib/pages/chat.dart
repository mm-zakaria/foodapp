import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/second_screen.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          // Navigator.push(
          //     context,
          //     CupertinoPageRoute(
          //         builder: (_) =>
          //             SecondScreen())); //this proparties traval one page to another page
          Navigator.pushNamed(context, '/second');
        },
        child: Text("First Screen"),
      )),
    );
  }
}
