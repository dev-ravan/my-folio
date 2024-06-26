import 'package:my_folio/Utils/exports.dart';

class InfoWidget extends StatelessWidget {
  final String keyTxt;
  final String valueTxt;
  const InfoWidget({super.key, required this.keyTxt, required this.valueTxt});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.only(bottom: 5),
      margin: const EdgeInsets.only(right: 30, bottom: 20),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.primary.withOpacity(0.1),
            width: 1.5,
          ),
        ),
      ),
      child: RichText(
        text: TextSpan(
          text: "$keyTxt: ",
          style:
              theme.textTheme.titleSmall!.copyWith(fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text: valueTxt,
              style: theme.textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
