import 'package:flutterrestapi/models/posts_model.dart';
import 'package:http/http.dart' as http;

class FetchApi {
  Future<List<Post>?> getdata() async {
    var client = http.Client();
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var json = response.body;
    return  postFromJson(json);
    }
    return null;
  }
}
