import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:mtv/models/book_model.dart';



class NewsStates with ChangeNotifier{
  String url = 'https://hacker-news.firebaseio.com/v0/topstories.json';

  NewsStates();

  dynamic _jsoninitResponse = [];
  bool _isFetching = false;



  bool get isFetching => _isFetching;
  
  
  Future <HNews> fetchData() async{
    _isFetching = true;
    notifyListeners();


/// This first network call gets a list of integers which doesn't have any useful decodeable json.
  var resp = await http.get(url);
    if(resp.statusCode == 200){
      _jsoninitResponse = jsonDecode(resp.body);
    }
/// This is where i iterate through the list of integers and then use each unique integer to make a valid network call that has json.
    /// I also decode the json and then serialize the json properly.
    for (var n in _jsoninitResponse){
      String newUrl = 'https://hacker-news.firebaseio.com/v0/item/$n.json';
       var sNews = await http.get(newUrl);
      _jsoninitResponse = jsonDecode(sNews.body);
      _jsoninitResponse = HNews.fromJson(_jsoninitResponse);
      print(_jsoninitResponse);
      
    }
    _isFetching = false;
    notifyListeners();
    return _jsoninitResponse;
  }

  dynamic get parsed => _jsoninitResponse;

   Future<dynamic> parsedJson(){
      if (_jsoninitResponse.isNotEmpty){
        Map<String, dynamic> ans = HNews.fromJson(_jsoninitResponse) as Map<String, dynamic >;
        print(ans);
        return ans['data'];
      }
     return null;
    }
}