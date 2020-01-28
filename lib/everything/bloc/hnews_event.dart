import 'package:equatable/equatable.dart';

abstract class HnewsEvent extends Equatable {
  const HnewsEvent();

  
  @override
  List<Object> get props => [];
}

class Fetch extends HnewsEvent{}