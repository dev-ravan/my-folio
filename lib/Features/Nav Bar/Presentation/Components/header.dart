import 'package:my_folio/Features/Nav%20Bar/Data/menu_details.dart';
import 'package:my_folio/Utils/exports.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final isTablet = Responsive.isTablet(context);

    return Padding(
      padding: isTablet ? const EdgeInsets.all(15) : const EdgeInsets.all(30),
      child: Stack(children: [
        Positioned(
          right: 0,
          child: Container(
            height: 5,
            width: 30,
            color: theme.primary,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            height: 25,
            width: 5,
            color: theme.primary,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 5,
            width: 30,
            color: theme.primary,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 25,
            width: 5,
            color: theme.primary,
          ),
        ),
        SizedBox(
          height: 55,
          child: Center(
              child: Text(
            isTablet
                ? MenuDetails.headerTitle.substring(0, 1)
                : MenuDetails.headerTitle,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontWeight: FontWeight.w500),
          )),
          // color: Colors.grey[400],
        ),
      ]),
    );
  }
}
