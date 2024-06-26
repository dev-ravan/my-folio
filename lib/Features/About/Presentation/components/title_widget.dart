import 'package:my_folio/Utils/exports.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        buildPrimaryLine(theme, w: 50),
        gap4,
        buildPrimaryLine(theme, w: 30),
      ],
    );
  }

  Widget buildPrimaryLine(ColorScheme theme, {required double w}) => Container(
        height: 4,
        width: w,
        decoration: BoxDecoration(
            color: theme.primary, borderRadius: BorderRadius.circular(5)),
      );
}
