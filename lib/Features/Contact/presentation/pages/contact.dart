import 'package:my_folio/Utils/exports.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Contact",
        style: Theme.of(context).textTheme.displayMedium,
      )),
    );
  }
}
