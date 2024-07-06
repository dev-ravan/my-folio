import 'package:my_folio/Features/Projects/data/model/project_mod.dart';
import 'package:my_folio/Utils/exports.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectHoverBoxWidget extends StatefulWidget {
  final ProjectMod details;
  const ProjectHoverBoxWidget({super.key, required this.details});

  @override
  State<ProjectHoverBoxWidget> createState() => _ProjectHoverBoxWidgetState();
}

class _ProjectHoverBoxWidgetState extends State<ProjectHoverBoxWidget> {
  bool isHover = false;

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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final bool isMobile = Responsive.isMobile(context);

    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHover = false;
        });
      },
      cursor: SystemMouseCursors.click,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        switchInCurve: Curves.easeIn,
        switchOutCurve: Curves.easeOut,
        child: Container(
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: AssetImage(widget.details.image),
                fit: BoxFit.cover,
              )),
          child: isHover
              ? Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: theme.outline.withOpacity(0.2), width: 1.5),
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                      colors: [
                        Palettes.blackColor.withOpacity(0.2),
                        Palettes.blackColor.withOpacity(0.9),
                      ],
                      begin: Alignment.topLeft,
                      stops: const [
                        0.2,
                        0.8,
                      ],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () => setState(() {
                                launchInBrowser(widget.details.gitLink);
                              }),
                          icon: Image.asset(
                            MyIcons.gitHub,
                            height: 32,
                            width: 32,
                          ))
                    ],
                  ),
                )
              : isMobile
                  ? SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () => setState(() {
                                    launchInBrowser(widget.details.gitLink);
                                  }),
                              icon: Image.asset(
                                MyIcons.gitHub,
                                color: Palettes.blackColor,
                                height: 32,
                                width: 32,
                              ))
                        ],
                      ),
                    )
                  : null,
        ),
      ),
    );
  }
}
