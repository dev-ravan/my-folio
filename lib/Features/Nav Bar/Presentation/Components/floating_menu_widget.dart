import 'package:my_folio/Utils/exports.dart';

class FloatingMenuWidget extends StatelessWidget {
  const FloatingMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Builder(builder: (context) {
      return InkWell(
        onTap: () => Scaffold.of(context).openDrawer(),
        child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                  color: theme.primary, borderRadius: BorderRadius.circular(5)),
              height: 40,
              width: 40,
              child: Icon(
                Icons.menu,
                color: Palettes.whiteColor,
              ),
            ),
          ),
        ),
      );
    });
  }
}
