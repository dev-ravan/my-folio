// ignore_for_file: deprecated_member_use

import 'package:my_folio/Utils/exports.dart';

class MenuItem extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onPressed;
  final MenuModel menuItem;
  const MenuItem(
      {super.key,
      required this.isSelected,
      required this.menuItem,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final isTablet = Responsive.isTablet(context);
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        padding: const EdgeInsets.only(bottom: 5),
        decoration: !isTablet
            ? isSelected
                ? BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: theme.primary.withOpacity(0.1), width: 1.5)))
                : null
            : null,
        child: Row(
          mainAxisAlignment:
              isTablet ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              menuItem.icon,
              height: 20,
              width: 20,
              color: isSelected ? theme.primary : theme.tertiary,
            ),
            if (!isTablet) gap12,
            if (!isTablet)
              Text(
                menuItem.title,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight:
                          isSelected ? FontWeight.w600 : FontWeight.w500,
                      color: isSelected ? theme.primary : theme.tertiary,
                    ),
              )
          ],
        ),
      ),
    );
  }
}
