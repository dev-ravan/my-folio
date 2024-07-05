// ignore_for_file: deprecated_member_use

import 'package:my_folio/Features/Nav%20Bar/Data/Models/community.dart';
import 'package:my_folio/Features/Nav%20Bar/Data/menu_details.dart';
import 'package:my_folio/Utils/exports.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    // Responsive
    final bool isTablet = Responsive.isTablet(context);

// Launch in browser
    Future<void> launchInBrowser(String url) async {
      try {
        await launchUrl(
          Uri.parse(url),
          mode: LaunchMode.externalApplication,
        );
      } catch (e) {
        throw Exception('Could not launch $url');
      }
    }

    return !isTablet
        ? Container(
            height: 50,
            width: double.maxFinite,
            decoration: BoxDecoration(
              border:
                  Border.all(color: theme.primary.withOpacity(0.2), width: 1.5),
              borderRadius: BorderRadius.circular(5),
              color: theme.secondary,
            ),
            child: Center(
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  width: 30,
                ),
                itemCount: MenuDetails.communityPlatforms.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final data = MenuDetails.communityPlatforms[index];
                  return platformWidget(launchInBrowser, data, theme);
                },
              ),
            ),
          )
        : Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            width: 50,
            decoration: BoxDecoration(
              border:
                  Border.all(color: theme.primary.withOpacity(0.2), width: 1.5),
              borderRadius: BorderRadius.circular(5),
              color: theme.secondary,
            ),
            child: Center(
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
                itemCount: MenuDetails.communityPlatforms.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final data = MenuDetails.communityPlatforms[index];
                  return platformWidget(launchInBrowser, data, theme);
                },
              ),
            ),
          );
  }

  InkWell platformWidget(Future<void> Function(String url) launchInBrowser,
      Community data, ColorScheme theme) {
    return InkWell(
      onTap: () => launchInBrowser(data.link),
      child: SvgPicture.asset(
        data.icon,
        height: 24,
        width: 24,
        color: theme.tertiary,
      ),
    );
  }
}
