import 'dart:async';
import 'package:mtv/everything/services/book_service.dart';
import 'package:rxdart/rxdart.dart';
import 'package:bloc/bloc.dart';
import 'package:mtv/everything/models/book_model.dart';

import './bloc.dart';

class HnewsBloc extends Bloc<HnewsEvent, HnewsState> {
  final NewsFlash techRepo;
  HnewsBloc({this.techRepo}) : assert(techRepo != null);

 
  @override
  HnewsState get initialState => InitialHnewsState();

  @override
  Stream<HnewsState> mapEventToState(
    HnewsEvent event,
  ) async* {
    if (event is Fetch){
      yield InitialHnewsState();
//      try{
//        final Iterable<int> pee = await (techRepo.getNews());
//        yield Fetching(url: pee);
//      }
//      catch(_){
//        NewsError();
//      }
      try{
        final List<HNews> techrepo = await techRepo.fetch();
        yield NewsLoaded(news: techrepo);
      }
      catch(_){
        NewsError();
      }
    }
  }
}
