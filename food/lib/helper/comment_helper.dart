import 'package:food/model/comment.dart';
import 'package:http/http.dart' as http;

class CommentHelper {
  Future<List<Comment>?> getComment() async {
    var response =
      await  http.get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
      if (response.statusCode == 200) {
        var data = response.body;
        print(data);
        return commentFromJson(data);
      }
  }
}
