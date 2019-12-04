import 'dart:convert';

import 'package:http/http.dart';
import 'package:mtv/models/book_model.dart';



// List<News> newsFromJson(String str) => List<News>.from(json.decode(str).map((x) => News.fromJson(x)));

// String newsToJson(List<News> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));



String url = 'https://hacker-news.firebaseio.com/v0/topstories.json';


Future getNews() async {
  var jsonNews = await get(url);
  var decodeNews = jsonDecode(jsonNews.body);
  // return News.fromJson(decodeNews[0]);

  for(var n in decodeNews){
    String newUrl = 'https://hacker-news.firebaseio.com/v0/item/${n}.json';
    dNews(newUrl);
  }
}
Future dNews(newUrl) async{
  var sNews = await get(newUrl);
  var parse = await jsonDecode(sNews.body);
  // print(parse);
  return News.fromJson(parse);
}