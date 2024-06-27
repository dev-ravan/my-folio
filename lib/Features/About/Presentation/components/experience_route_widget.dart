// ignore_for_file: deprecated_member_use

import 'package:my_folio/Utils/dash_line.dart';
import 'package:my_folio/Utils/exports.dart';

class ExperienceRouteWidget extends StatelessWidget {
  final String date;
  final String role;
  final String company;
  final String address;
  final String pincode;
  final bool isDashEnd;
  const ExperienceRouteWidget(
      {super.key,
      required this.date,
      required this.role,
      required this.company,
      required this.address,
      required this.pincode,
      required this.isDashEnd});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 150,
          child: Column(
            children: [
              Container(
                width: 20,
                height: 22,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  //color: color,
                  border: Border.all(
                    color: theme.primary,
                  ),
                ),
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: theme.primary,
                  ),
                ),
              ),
              Visibility(
                visible: isDashEnd,
                child: Expanded(
                  child: CustomPaint(
                    painter: DashedLinePainter(color: theme.primary),
                  ),
                ),
              ),
            ],
          ),
        ),
        gap12,
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  MyIcons.calendar,
                  height: 16,
                  width: 16,
                  color: theme.tertiary,
                ),
                gap8,
                Text(
                  date,
                  style: textTheme.titleSmall,
                ),
              ],
            ),
            gap8,
            Text(
              role,
              style: textTheme.titleMedium,
            ),
            gap8,
            Text(
              company,
              style: textTheme.titleSmall,
            ),
            gap4,
            Text(
              address,
              style: textTheme.titleSmall,
            ),
            gap4,
            Text(
              pincode,
              style: textTheme.titleSmall,
            ),
            if (isDashEnd) gap32
          ],
        )),
      ],
    );
  }
}
