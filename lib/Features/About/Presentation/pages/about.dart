// ignore_for_file: use_build_context_synchronously

import 'package:my_folio/Constants/docs.dart';
import 'package:my_folio/Features/About/Presentation/components/education_and_experience_info.dart';
import 'package:my_folio/Features/About/Presentation/components/info_section.dart';
import 'package:my_folio/Features/About/Presentation/components/title_widget.dart';
import 'package:my_folio/Features/About/data/about_details.dart';
import 'package:my_folio/Features/Home/Presentation/components/common_button.dart';
import 'package:my_folio/Utils/exports.dart';
import 'package:my_folio/Utils/pdf_services.dart';
import 'package:my_folio/Utils/toasts.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Theme
    final textTheme = Theme.of(context).textTheme;
    final theme = Theme.of(context).colorScheme;

    // Launch mail for clicking hire me
    void launchHireMeEmail() async {
      final Uri url = Uri(
        scheme: 'mailto',
        path: AboutDetails.myMailId,
      );
      try {
        await launchUrl(url);
      } catch (e) {
        throw Exception('Could not launch $url');
      }
    }

    // Download cv
    Future<void> downloadCv() async {
      try {
        await PDFService.downloadFromAssets(
          Docs.resume,
          Docs.resumeName,
        );
      } catch (e) {
        // You might want to show a snackbar or dialog here
        warningToastMsg(
            msg: "Can't download resume right now!", context: context);
      }
    }

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
                onTap: () => downloadCv(),
              ),
              gap12,
              CommonButton(
                title: "Hire Me",
                onTap: () => launchHireMeEmail(),
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
