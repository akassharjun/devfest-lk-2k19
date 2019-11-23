import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:devfest_lk_2019/model/moment.dart';
import 'package:devfest_lk_2019/services/network_service.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'moments_event.dart';
part 'moments_state.dart';

class MomentsBloc extends Bloc<MomentsEvent, MomentsState> {
  @override
  MomentsState get initialState => InitialMomentsState();

  @override
  Stream<MomentsState> mapEventToState(MomentsEvent event) async* {
    if (event is FetchMomentListMomentsEvent) {
      yield* _mapFetchMomentListMomentsEventToState();
    }
  }

  Stream<MomentsState> _mapFetchMomentListMomentsEventToState() async* {
    yield NetworkBusyMomentsState();
    try {
      NetworkService networkService = NetworkService();
      List<Moment> momentList = await networkService.getAllMoments();
      yield MomentListFetchedMomentsState(momentList);
    } catch (error) {
      // handle network call error
      NetworkException exception = error;
      yield NetworkErrorMomentsState(error: exception.cause.toString());
    }
  }

}
