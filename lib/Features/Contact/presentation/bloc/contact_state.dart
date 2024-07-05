part of 'contact_bloc.dart';

sealed class ContactState {}

final class ContactActionState extends ContactState {}

final class ContactInitial extends ContactState {}

final class SendMsgSuccessState extends ContactActionState {}

final class SendMsgFailureState extends ContactActionState {
  final String error;

  SendMsgFailureState(this.error);
}

final class SendMsgLoadingState extends ContactActionState {}
