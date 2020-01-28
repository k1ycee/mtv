import 'package:equatable/equatable.dart';
import 'package:mtv/everything/models/book_model.dart';

abstract class HnewsState extends Equatable {
  const HnewsState();

  @override
  List<Object> get props => [];
}

class InitialHnewsState extends HnewsState {}

class Fetching extends HnewsState{
//  final Iterable<int> url;
//  const Fetching({this.url});

//  @override
//  List<Object> get props => [url];
}

class NewsError extends HnewsState{}

class NewsLoaded extends HnewsState{
  final List<HNews> news;

  const NewsLoaded({this.news});

  @override
  List<Object> get props => [news];
}
