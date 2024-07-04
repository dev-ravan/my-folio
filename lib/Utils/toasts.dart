import 'package:my_folio/Utils/exports.dart';
import 'package:toastification/toastification.dart';

ToastificationItem successToastMsg(
    {required msg, required BuildContext context}) {
  return toastification.show(
      type: ToastificationType.success,
      autoCloseDuration: const Duration(seconds: 3),
      alignment: Alignment.topCenter,
      showProgressBar: false,
      title: Text(
        msg,
        style: Theme.of(context).textTheme.bodyLarge,
      ));
}

ToastificationItem warningToastMsg(
    {required msg, required BuildContext context}) {
  return toastification.show(
      type: ToastificationType.error,
      autoCloseDuration: const Duration(seconds: 3),
      alignment: Alignment.topCenter,
      showProgressBar: false,
      title: Text(
        msg,
        style: Theme.of(context).textTheme.bodyLarge,
      ));
}
