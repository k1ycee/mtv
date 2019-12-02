import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mtv/models/serializers/serializers.dart';
part 'book_model.g.dart';

abstract class News implements Built<News, NewsBuilder> {

  static Serializer<News> get serializer => _$newsSerializer;
    String get by;
    int get descendants;
    int get id;
    List<int> get kids;
    int get score;
    int get time;
    String get title;
    String get type;
    String get url;
  News._();
  factory News([void Function(NewsBuilder) updates]) = _$News;
}


News parsedNews(String str){
  final parsed = jsonDecode(str);
  News news = standardSerializers.deserializeWith(News.serializer, parsed);
  return news;
}
