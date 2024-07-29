import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        print(_controller.text);
        _controller.clear();
      }),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          TextField(
            controller: _controller,
            decoration: InputDecoration(
                prefix: IconButton(
                    onPressed: () {}, icon: Icon(Icons.alarm_add_rounded)),
                     suffix: IconButton(
                    onPressed: () {}, icon: Icon(Icons.search)),
                    
                    ),
                    
          ),
          TextFormField(),
         
        ],
      ),
    );
  }
}
