import 'package:my_folio/Utils/exports.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Services",
        style: Theme.of(context).textTheme.displayMedium,
      )),
    );
  }
}
