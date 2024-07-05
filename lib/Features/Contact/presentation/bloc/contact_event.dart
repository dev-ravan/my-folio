part of 'contact_bloc.dart';

sealed class ContactEvent {}

final class SendMsgButtonClickEvent extends ContactEvent {
  final String userName;
  final String userEmail;
  final String subject;
  final String content;

  SendMsgButtonClickEvent(
      {required this.userName,
      required this.userEmail,
      required this.subject,
      required this.content});
}
