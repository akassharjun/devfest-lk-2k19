part of 'speakers_bloc.dart';

@immutable
abstract class SpeakersState extends Equatable {
  SpeakersState([List props = const []]);
}

class InitialSpeakersState extends SpeakersState {}

class NetworkBusySpeakersState extends SpeakersState {}

class NetworkErrorSpeakersState extends SpeakersState {
  final String error;

  NetworkErrorSpeakersState({this.error});

  @override
  String toString() => 'NetworkErrorSpeakersState';
}

class FetchedSpeakerListSpeakersState extends SpeakersState {
  final List<Speaker> speakerList;

  FetchedSpeakerListSpeakersState(this.speakerList);
}

