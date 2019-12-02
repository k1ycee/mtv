import 'dart:convert';

import 'package:http/http.dart';
import 'package:mtv/models/book_model.dart';


String url = 'https://hacker-news.firebaseio.com/v0/topstories.json?print=pretty';


// Future getNews() async {
//   final response =
//       await get('$url');

//   if (response.statusCode == 200) {
//     // If server returns an OK response, parse the JSON.
//     return Welcome.fromJson(json.decode(response.body));
//   } else {
//     // If that response was not OK, throw an error.
//     throw Exception('Failed to load post');
//   }
// }
