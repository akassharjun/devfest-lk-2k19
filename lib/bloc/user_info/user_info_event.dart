part of 'user_info_bloc.dart';

@immutable
abstract class UserInfoEvent extends Equatable {
  UserInfoEvent([List props = const []]);
}

class RetrieveUserDataUserInfoEvent extends UserInfoEvent {}



class SendFeedbackUserInfoEvent extends UserInfoEvent {
  final String userID;
  final String feedback;

  SendFeedbackUserInfoEvent(this.userID, this.feedback);
}
