import 'package:my_folio/Utils/exports.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "About",
        style: Theme.of(context).textTheme.displayMedium,
      )),
    );
  }
}
