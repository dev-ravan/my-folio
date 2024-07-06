import 'package:my_folio/Features/About/Presentation/components/education_route_widget.dart';
import 'package:my_folio/Features/About/Presentation/components/experience_route_widget.dart';
import 'package:my_folio/Features/About/data/about_details.dart';
import 'package:my_folio/Utils/exports.dart';

class EducationAndExperienceInfo extends StatelessWidget {
  const EducationAndExperienceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final bool isMobile = Responsive.isMobile(context);
    final bool isTablet = Responsive.isTablet(context);

    return Column(
      children: [
        if (isMobile) buildExperience(textTheme, theme),
        if (isMobile) gap32,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: buildEducation(textTheme, theme),
            ),
            if (!isMobile) isTablet ? gap12 : gap48,
            if (!isMobile)
              Expanded(
                child: buildExperience(textTheme, theme),
              ),
          ],
        ),
      ],
    );
  }

  Column buildExperience(TextTheme textTheme, ColorScheme theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Experience",
          style: textTheme.headlineMedium,
        ),
        gap16,
        Container(
          padding: p24,
          width: double.maxFinite,
          decoration: BoxDecoration(
            border:
                Border.all(color: theme.outline.withOpacity(0.2), width: 1.5),
            borderRadius: BorderRadius.circular(5),
            color: theme.secondary,
          ),
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: ExperienceDetailsEnum.values.length,
            itemBuilder: (context, index) {
              final e = ExperienceDetailsEnum.values[index];
              return ExperienceRouteWidget(
                date: e.date,
                address: e.address,
                pincode: e.pincode,
                isDashEnd: index < ExperienceDetailsEnum.values.length - 1,
                role: e.role,
                company: e.company,
              );
            },
          ),
        ),
      ],
    );
  }

  Column buildEducation(TextTheme textTheme, ColorScheme theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Education",
          style: textTheme.headlineMedium,
        ),
        gap16,
        Container(
          padding: p24,
          width: double.maxFinite,
          decoration: BoxDecoration(
            border:
                Border.all(color: theme.outline.withOpacity(0.2), width: 1.5),
            borderRadius: BorderRadius.circular(5),
            color: theme.secondary,
          ),
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: EducationDetailsEnum.values.length,
            itemBuilder: (context, index) {
              final e = EducationDetailsEnum.values[index];
              return EducationRouteWidget(
                date: e.date,
                course: e.name,
                edcationCenter: e.educationCenter,
                address: e.address,
                pincode: e.pincode,
                isDashEnd: index < EducationDetailsEnum.values.length - 1,
              );
            },
          ),
        ),
      ],
    );
  }
}
