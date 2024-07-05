import 'package:my_folio/Utils/exports.dart';

// ignore: must_be_immutable
class MsgField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  int maxLines;
  MsgField(
      {super.key,
      required this.controller,
      required this.hint,
      this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (val) => val!.isEmpty ? "Fill required field $hint" : null,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
      ),
    );
  }
}
