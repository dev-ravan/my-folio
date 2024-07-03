import 'package:my_folio/Features/About/Presentation/components/title_widget.dart';
import 'package:my_folio/Features/Projects/data/project_details.dart';
import 'package:my_folio/Features/Projects/presentation/components/project_hover_box.dart';
import 'package:my_folio/Utils/exports.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Responsive
    final bool isMobile = Responsive.isMobile(context);
    final bool isTablet = Responsive.isTablet(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Title
          const TitleWidget(title: "My Projects"),
          !isMobile ? gap48 : gap24,
          // Grid View
          GridView.builder(
            itemCount: ProjectDetails.projects.length,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                crossAxisCount: isMobile
                    ? 1
                    : isTablet
                        ? 2
                        : 3,
                childAspectRatio: 1.8),
            itemBuilder: (context, index) {
              return ProjectHoverBoxWidget(
                details: ProjectDetails.projects[index],
              );
            },
          ),
          gap24,
        ],
      ),
    ));
  }
}
