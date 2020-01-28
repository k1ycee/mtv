import 'dart:convert';

import 'package:http/http.dart' as http;
class NewsFlash{
  static const _baseurl = 'https://hacker-news.firebaseio.com/v0/';


  List<int> parseStoryIds(String jsonStr) {
  var parsed = jsonDecode(jsonStr);
  var listOfIds = List<int>.from(parsed);
  return listOfIds;
}
  

  Future<List<int>> _getIds(http.Client client) async{
    final url = '$_baseurl'+'topstories.json';
    final response = await client.get(url);

    if(response.statusCode == 200){
      var result = parseStoryIds(response.body);
       return result.take(10).toList();
    }
  }
}