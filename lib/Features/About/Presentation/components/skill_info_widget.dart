import 'package:my_folio/Utils/exports.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LinearSkillIndicatorWidget extends StatelessWidget {
  final String title;
  final int skillLevel;
  const LinearSkillIndicatorWidget(
      {super.key, required this.title, required this.skillLevel});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    double percentage = skillLevel / 100;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style:
                  textTheme.titleSmall!.copyWith(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Text(
              "$skillLevel%",
              style:
                  textTheme.titleSmall!.copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
        gap4,
        LinearPercentIndicator(
          padding: EdgeInsets.zero,
          animation: true,
          curve: Curves.linear,
          animationDuration: 1000,
          barRadius: const Radius.circular(5),
          lineHeight: 7.0,
          percent: percentage,
          progressColor: theme.primary,
          backgroundColor: theme.outline,
        ),
        gap24
      ],
    );
  }
}
