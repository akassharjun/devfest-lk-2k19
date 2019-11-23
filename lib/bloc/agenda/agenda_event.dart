part of 'agenda_bloc.dart';

@immutable
abstract class AgendaEvent extends Equatable {
  AgendaEvent([List props = const []]);
}

class FetchSessionsEvent extends AgendaEvent {}
