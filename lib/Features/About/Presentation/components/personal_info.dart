import 'package:my_folio/Features/About/Presentation/components/personal_info_widget.dart';
import 'package:my_folio/Features/About/Presentation/components/skills_info.dart';
import 'package:my_folio/Features/About/data/about_details.dart';
import 'package:my_folio/Utils/exports.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);

    return Column(
      children: [
        buildFirstSection(),
        buildSecondSection(),
        gap24,
        if (isMobile) gap24,
        if (isMobile) const SkillsInfo(),
        if (isMobile) gap24,
      ],
    );
  }

  Column buildSecondSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Age
        InfoWidget(
          keyTxt: 'Age',
          valueTxt: AboutDetails.age,
        ),
        // Email
        InfoWidget(
          keyTxt: 'Email',
          valueTxt: AboutDetails.email,
        ),
        // Phone
        InfoWidget(
          keyTxt: 'Phone',
          valueTxt: AboutDetails.phone,
        ),
        // Freelance
        InfoWidget(
          keyTxt: 'Freelance',
          valueTxt: AboutDetails.freelance,
        ),
      ],
    );
  }

  Column buildFirstSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Birthday
        InfoWidget(
          keyTxt: 'Birthday',
          valueTxt: AboutDetails.birthDay,
        ),
        // Website
        InfoWidget(
          keyTxt: 'Website',
          valueTxt: AboutDetails.website,
        ),
        // Degree
        InfoWidget(
          keyTxt: 'Degree',
          valueTxt: AboutDetails.degree,
        ),
        // City
        InfoWidget(
          keyTxt: 'City',
          valueTxt: AboutDetails.city,
        ),
      ],
    );
  }
}
