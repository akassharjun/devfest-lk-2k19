part of 'agenda_bloc.dart';

@immutable
abstract class AgendaState extends Equatable {
  AgendaState([List props = const []]);
}

class InitialAgendaState extends AgendaState {}


class NetworkBusyAgendaState extends AgendaState{}

class NetworkErrorAgendaState extends AgendaState{
  final String error;

  NetworkErrorAgendaState({this.error});

  @override
  String toString() => 'NetworkErrorAgendaState';
}

@immutable
class SessionsFetchedAgendaState extends AgendaState {
  final List<Session> sessionList;

  SessionsFetchedAgendaState(this.sessionList);
}