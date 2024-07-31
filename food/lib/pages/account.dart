import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';

class Account extends StatefulWidget {
  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  TextEditingController _controller = TextEditingController();

  Box? contactBox;

  @override
  void initState() {
    contactBox = Hive.box('contact-list');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
        child: Column(
          children: [ 
            TextField(
              controller: _controller,
            ),
            SizedBox(
              width: 350,
              child: ElevatedButton(
                  onPressed: () async {
                    try {
                      final userInput = _controller.text;
                      await contactBox!.add(userInput);
                      _controller.clear();
                      Fluttertoast.showToast(msg: "new contact added");
                    } catch (e) {
                      Fluttertoast.showToast(msg: e.toString());
                    }
                  },
                  child: Text("Add New Contact")),
            ),
          ],
        ),
      ),
    );
  }
}
