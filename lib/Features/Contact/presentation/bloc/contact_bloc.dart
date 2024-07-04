import 'dart:async';
import 'package:emailjs/emailjs.dart' as emailjs;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_folio/Core/Secrets/secrets.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactInitial()) {
    on<SendMsgButtonClickEvent>(_sendMsgButtonClickEvent);
  }

  FutureOr<void> _sendMsgButtonClickEvent(
      SendMsgButtonClickEvent event, Emitter<ContactState> emit) async {
    emit(SendMsgLoadingState());
    try {
      Map<String, dynamic> templateParams = {
        "user_name": event.userName,
        "user_email": event.userEmail,
        "user_subject": event.subject,
        "user_message": event.content
      };
      final response = await emailjs.send(
        Secrets.serviceId,
        Secrets.templateId,
        templateParams,
        emailjs.Options(
            publicKey: Secrets.publicKey, privateKey: Secrets.privateKey),
      );

      if (response.status == 200) {
        emit(SendMsgSuccessState());
      } else {
        emit(SendMsgFailureState("Somthing went wrong retry..!"));
      }
    } catch (e) {
      emit(SendMsgFailureState(e.toString()));
    }
  }
}
