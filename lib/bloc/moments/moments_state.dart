part of 'moments_bloc.dart';

@immutable
abstract class MomentsState extends Equatable {
  MomentsState([List props = const []]);
}

class InitialMomentsState extends MomentsState {}

class NetworkBusyMomentsState extends MomentsState {}

class NetworkErrorMomentsState extends MomentsState {
  final String error;

  NetworkErrorMomentsState({this.error});

  @override
  String toString() => 'NetworkErrorMomentsState';
}

class MomentListFetchedMomentsState extends MomentsState {
  final List<Moment> momentList;

  MomentListFetchedMomentsState(this.momentList);
}

