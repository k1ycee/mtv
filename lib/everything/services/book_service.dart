import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mtv/everything/models/book_model.dart';
class NewsFlash{
  static const _baseurl = 'https://hacker-news.firebaseio.com/v0/';
  var client = http.Client();


  List<int> parseStoryIds(String jsonStr) {
  var parsed = jsonDecode(jsonStr);
  var listOfIds = List<int>.from(parsed);
  return listOfIds;
  }
  Future<List<dynamic>> getJson(String url) async{
    var news = await client.get(url);
    var parse = jsonDecode(news.body);
    var amt = parse.take(10).toList();
    articles(amt);
    return amt;
  }

  Future<List<int>> getIds() async{
    final url = '$_baseurl'+'topstories.json';
    final response = await client.get(url);

    if(response.statusCode == 200){
      var result = parseStoryIds(response.body);
      for (var n in result){
        String newurl = '$_baseurl'+'$n.json';
        getJson(newurl);
      }
    }
    return null;
  }
  Future<Habs> articles(Map<String, dynamic> pff)async{
    return Habs.fromJson(pff);
  }
}