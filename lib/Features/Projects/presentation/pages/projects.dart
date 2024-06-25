import 'package:my_folio/Utils/exports.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Projects",
        style: Theme.of(context).textTheme.displayMedium,
      )),
    );
  }
}
