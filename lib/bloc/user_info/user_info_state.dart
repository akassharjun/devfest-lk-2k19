part of 'user_info_bloc.dart';


@immutable
abstract class UserInfoState extends Equatable {
  UserInfoState([List props = const []]);
}

class InitialUserInfoState extends UserInfoState {}

class UserDataRetrievedUserInfoState extends UserInfoState {
  final User user;

  UserDataRetrievedUserInfoState(this.user);
}


class NetworkBusyUserInfoState extends UserInfoState {}

class NetworkErrorUserInfoState extends UserInfoState {
  final String error;

  NetworkErrorUserInfoState({this.error});

  @override
  String toString() => 'NetworkErrorUserInfoState';
}

class FeedbackMessageSentUserInfoState extends UserInfoState {}

