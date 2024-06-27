import 'package:my_folio/Features/About/Presentation/components/personal_info.dart';
import 'package:my_folio/Features/About/Presentation/components/skills_info.dart';
import 'package:my_folio/Utils/exports.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          child: PersonalInfo(),
        ),
        if (!isMobile) const Expanded(child: SkillsInfo())
      ],
    );
  }
}
