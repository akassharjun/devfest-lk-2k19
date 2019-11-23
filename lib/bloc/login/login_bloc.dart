import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:devfest_lk_2019/model/auth_response.dart';
import 'package:devfest_lk_2019/services/network_service.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  @override
  LoginState get initialState => InitialLoginState();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is AuthorizeUser) {
      yield* _mapValidationLoginCredentialsToState(
          event.email, event.ticketNumber);
    }
    if (event is CheckIfUserIsAlreadyLoggedIn) {
      yield* _mapCheckIfUserIsAlreadyLoggedInToState();
    }
  }

  Stream<LoginState> _mapCheckIfUserIsAlreadyLoggedInToState() async* {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool hasUserLoggedIn = prefs.getBool('signedIn');
    print("in");
    print(hasUserLoggedIn);
    if (hasUserLoggedIn != null) {
      yield UserAlreadyLoggedInState();
    } else {
      yield UserNotLoggedInState();
    }
  }

  Stream<LoginState> _mapValidationLoginCredentialsToState(
      String email, String ticketNumber) async* {
    yield NetworkBusyLoginState();
    try {
      // network call
      print(email);
      print(ticketNumber);
      NetworkService networkService = NetworkService();
      AuthResponse authResponse =
          await networkService.authorizeUser(email, ticketNumber);

      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('bearerToken', authResponse.token);
      prefs.setString('userInfo', authResponse.user.toJson().toString());
      prefs.setBool('signedIn', true);

      yield SuccessLoginState();
    } catch (error) {
      // handle network call error
      yield NetworkErrorLoginState(error: "Invalid Credientials!");
      await Future.delayed(const Duration(seconds: 2), () {});
      yield UserNotLoggedInState();
    }
  }
}
