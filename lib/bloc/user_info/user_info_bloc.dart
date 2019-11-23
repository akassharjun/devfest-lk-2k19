import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:devfest_lk_2019/model/auth_response.dart';
import 'package:devfest_lk_2019/services/network_service.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'user_info_event.dart';

part 'user_info_state.dart';

class UserInfoBloc extends Bloc<UserInfoEvent, UserInfoState> {
  @override
  UserInfoState get initialState => InitialUserInfoState();

  @override
  Stream<UserInfoState> mapEventToState(UserInfoEvent event) async* {
    if (event is RetrieveUserDataUserInfoEvent) {
      yield* _mapRetrieveUserDataUserInfoEvent();
    }
    if (event is SendFeedbackUserInfoEvent) {
      yield* _mapSendFeedBackUserInfoEvent(event.userID, event.feedback);
    }
  }

  Stream<UserInfoState> _mapRetrieveUserDataUserInfoEvent() async* {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String userData = prefs.getString('userInfo');
    User user = User.fromJson(userData);
    yield UserDataRetrievedUserInfoState(user);
//    await Future.delayed(const Duration(seconds: 2), (){});
//
//    yield InitialUserInfoState();
  }

  Stream<UserInfoState> _mapSendFeedBackUserInfoEvent(
      String userId, String message) async* {
    yield NetworkBusyUserInfoState();
    NetworkService networkService = NetworkService();

    try {
      networkService.sendFeedback(userId, message);

      yield FeedbackMessageSentUserInfoState();
      await Future.delayed(const Duration(seconds: 3), () {});

      yield InitialUserInfoState();
    } catch (error) {
      // handle network call error
      NetworkException exception = error;
      yield NetworkErrorUserInfoState(error: exception.cause.toString());
    }
  }
}
