import 'package:my_folio/Features/Home/Data/home_details.dart';
import 'package:my_folio/Features/Home/Presentation/components/common_button.dart';
import 'package:my_folio/Features/Home/Presentation/components/img_intro_section.dart';
import 'package:my_folio/Features/Home/Presentation/components/roles_widget.dart';
import 'package:my_folio/Utils/exports.dart';

class BasicIntroSection extends StatelessWidget {
  const BasicIntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);

    final textTheme = Theme.of(context).textTheme;
    final theme = Theme.of(context).colorScheme;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              text: HomeDetails.helloTxt,
              style: textTheme.headlineMedium,
              children: [
                TextSpan(
                  text: HomeDetails.myName,
                  style: GoogleFonts.dancingScript(
                      fontSize: 32, color: theme.primary),
                ),
              ],
            ),
          ),
          gap24,
          if (isMobile) gap12,
          if (isMobile) const ImgIntroSection(),
          if (isMobile) gap12,
          const RoleWidget(),
          gap24,
          Text(
            HomeDetails.content,
            style:
                textTheme.titleMedium!.copyWith(fontWeight: FontWeight.normal),
          ),
          gap48,
          CommonButton(
            onTap: () {},
            title: "More about Me",
          ),
        ],
      ),
    );
  }
}
