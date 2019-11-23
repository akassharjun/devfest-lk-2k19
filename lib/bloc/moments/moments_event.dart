part of 'moments_bloc.dart';

@immutable
abstract class MomentsEvent extends Equatable {
  MomentsEvent([List props = const []]);
}

class FetchMomentListMomentsEvent extends MomentsEvent {}