import 'package:my_folio/Features/About/Presentation/components/skill_info_widget.dart';
import 'package:my_folio/Features/About/data/about_details.dart';
import 'package:my_folio/Utils/exports.dart';

class SkillsInfo extends StatelessWidget {
  const SkillsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: AboutDetails.techSkills.length,
        itemBuilder: (context, index) {
          final skills = AboutDetails.techSkills[index];
          return LinearSkillIndicatorWidget(
            skillLevel: int.parse(skills.percentage),
            title: skills.skill,
          );
        });
  }
}
