import 'package:my_folio/Features/Nav%20Bar/Presentation/Components/footer.dart';
import 'package:my_folio/Utils/exports.dart';

class SideMenuWidget extends StatelessWidget {
  const SideMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isTablet = Responsive.isTablet(context);
    double menuWidth = isTablet ? 80 : 270;
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          border: Border(
              right: BorderSide(
                  color: Theme.of(context).colorScheme.outline.withOpacity(0.1),
                  width: 1.5))),
      padding: !isTablet ? const EdgeInsets.symmetric(horizontal: 40) : null,
      width: menuWidth,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Header(), gap48, SideMenuItems(), Footer(), gap12],
      ),
    );
  }
}
