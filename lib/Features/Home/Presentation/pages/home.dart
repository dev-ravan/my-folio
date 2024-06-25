import 'package:my_folio/Utils/exports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Home",
        style: Theme.of(context).textTheme.displayMedium,
      )),
    );
  }
}
