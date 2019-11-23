import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:devfest_lk_2019/model/speaker.dart';
import 'package:devfest_lk_2019/services/network_service.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'speakers_event.dart';
part 'speakers_state.dart';

class SpeakersBloc extends Bloc<SpeakersEvent, SpeakersState> {
  @override
  SpeakersState get initialState => InitialSpeakersState();

  @override
  Stream<SpeakersState> mapEventToState(SpeakersEvent event) async* {
    if (event is FetchSpeakerListSpeakersEvent) {
      yield* _mapFetchSpeakerListToState();
    }
  }

  Stream<SpeakersState> _mapFetchSpeakerListToState() async* {
    yield NetworkBusySpeakersState();
    try {
      NetworkService networkService = NetworkService();
      List<Speaker> speakerList = await networkService.getAllSpeakers();
      yield FetchedSpeakerListSpeakersState(speakerList);
    } catch (error) {
      // handle network call error
      NetworkException exception = error;
      yield NetworkErrorSpeakersState(error: exception.cause.toString());
    }
  }
}
