part of 'speakers_bloc.dart';

@immutable
abstract class SpeakersEvent extends Equatable {
  SpeakersEvent([List props = const []]);
}

class FetchSpeakerListSpeakersEvent extends SpeakersEvent {}