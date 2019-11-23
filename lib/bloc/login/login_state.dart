part of 'login_bloc.dart';


@immutable
abstract class LoginState extends Equatable {
  LoginState([List props = const []]);
}

class InitialLoginState extends LoginState {}

class NetworkBusyLoginState extends LoginState {}

class NetworkErrorLoginState extends LoginState {
  final String error;

  NetworkErrorLoginState({this.error});

  @override
  String toString() => 'NetworkErrorLoginState';
}

class SuccessLoginState extends LoginState {}

class UserAlreadyLoggedInState extends LoginState {}

class UserNotLoggedInState extends LoginState {}
