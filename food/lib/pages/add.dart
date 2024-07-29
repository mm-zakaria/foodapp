import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Form(
          key: _formkey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              TextFormField(
                controller: _emailcontroller,
                decoration: InputDecoration(hintText: "Enter Your Email:"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Value can\`t be empty";
                  } else if (value.length > 5) {
                    return "can\`t be grather than five";
                  }
                },
              ),
              TextFormField(
                controller: _passwordcontroller,
                decoration: InputDecoration(hintText: "Enter Your Password:"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Value can\`t be empty";
                  } else if (value.length < 6) {
                    return "can\`t be less than six";
                  }
                },
              ),
              Divider(),
              SizedBox(
                  width: 250,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {

                        }
                      },
                      child: Text("continue"))),
            ],
          ),
        ),
      ),
    );
  }
}
