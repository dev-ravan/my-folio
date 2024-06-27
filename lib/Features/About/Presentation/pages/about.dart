import 'package:my_folio/Features/About/Presentation/components/education_and_experience_info.dart';
import 'package:my_folio/Features/About/Presentation/components/info_section.dart';
import 'package:my_folio/Features/About/Presentation/components/title_widget.dart';
import 'package:my_folio/Features/About/data/about_details.dart';
import 'package:my_folio/Features/Home/Presentation/components/common_button.dart';
import 'package:my_folio/Utils/exports.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWidget(
            title: AboutDetails.title,
          ),
          gap48,
          // Welcome content
          RichText(
            text: TextSpan(
              text: AboutDetails.myName,
              style: textTheme.headlineSmall,
              children: [
                TextSpan(
                  text: AboutDetails.myRole,
                  style:
                      textTheme.headlineSmall!.copyWith(color: theme.primary),
                ),
              ],
            ),
          ),
          gap16,
          // About content
          Text(
            AboutDetails.content,
            style:
                textTheme.titleMedium!.copyWith(fontWeight: FontWeight.normal),
          ),
          gap24,
          Row(
            children: [
              CommonButton(
                title: "Download CV",
                onTap: () {},
              ),
              gap12,
              CommonButton(
                title: "Hire Me",
                onTap: () {},
              )
            ],
          ),
          gap48,
          const InfoSection(),
          gap32,
          const EducationAndExperienceInfo(),
          gap32,
        ],
      ),
    ));
  }
}
