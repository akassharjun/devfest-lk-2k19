part of 'login_bloc.dart';

@immutable
abstract class LoginEvent extends Equatable {
  LoginEvent([List props = const []]);
}

class AuthorizeUser extends LoginEvent {
  final String email;
  final String ticketNumber;

  AuthorizeUser(this.email, this.ticketNumber) : super([email, ticketNumber]);
}

class CheckIfUserIsAlreadyLoggedIn extends LoginEvent {

}