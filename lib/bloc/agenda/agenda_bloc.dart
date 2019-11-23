import 'package:bloc/bloc.dart';
import 'package:devfest_lk_2019/bloc/login/login_bloc.dart';
import 'package:devfest_lk_2019/model/auth_response.dart';
import 'package:devfest_lk_2019/model/session.dart';
import 'package:devfest_lk_2019/services/network_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'agenda_state.dart';

part 'agenda_event.dart';

class AgendaBloc extends Bloc<AgendaEvent, AgendaState> {
  @override
  AgendaState get initialState => InitialAgendaState();

  @override
  Stream<AgendaState> mapEventToState(AgendaEvent event) async* {
    if (event is FetchSessionsEvent) {
      yield* _mapFetchSessionsToState();
    }
  }



  Stream<AgendaState> _mapFetchSessionsToState() async* {
    yield NetworkBusyAgendaState();
    try {
      NetworkService networkService = NetworkService();
      List<Session> sessions = await networkService.getAllSessions();
      yield SessionsFetchedAgendaState(sessions);
    } catch (error, stacktrace) {
      // handle network call error
      NetworkException exception = error;
      yield NetworkErrorAgendaState(error: exception.cause.toString());
    }
  }
}

// complete agenda bloc

// complete faq bloc
