import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:myportfolio_ahmadghauri/models/blog_model.dart';
class ApiProvider{
  Future<List<Blog>> getBlogs() async {
    final response = await http.get(Uri.https('adityadroid-medium.herokuapp.com','/@adityadroid'));
    if(response.statusCode==200){
      List blogs = json.decode(utf8.decode(response.bodyBytes))['response'];
      final results= blogs.map((blog)=>Blog.fromJson(blog)).toList();
      return results;
    }else{
      return throw("exception occured");
    }
  }
}