import 'package:flutter/material.dart';
import 'package:food/helper/comment_helper.dart';
import 'package:food/model/comment.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<Comment>? comments;
  bool isloaded = false;
  getData() async {
    comments = await CommentHelper().getComment();
    setState(() {
      isloaded = true;
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Screen"),
        ),
        body: Visibility(
          visible: isloaded,
          replacement: Center(
            child: CircularProgressIndicator(),
          ),
          child: ListView.builder(
              itemCount: comments?.length ?? 0,
              itemBuilder: (_, index) {
                return Card(
                    elevation: 3,
                    child: ListTile(
                      title: Text(comments![index].name),
                      subtitle: Text(comments![index].email),
                    ));
              }),
        ));
  }
}
