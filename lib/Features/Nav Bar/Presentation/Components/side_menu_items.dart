import 'package:my_folio/Features/Nav%20Bar/Presentation/Components/menu_item.dart';
import 'package:my_folio/Utils/exports.dart';

class SideMenuItems extends StatelessWidget {
  const SideMenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (context, state) {
        List<MenuModel> menuItems = [];
        int selectedIndex = 0;

        if (state is MenuInitial) {
          menuItems = state.menuItems;
        } else if (state is MenuItemsState) {
          menuItems = state.menuItems;
          selectedIndex = state.index;
        }
        return Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                bool isSelected = index == selectedIndex;

                return MenuItem(
                  onPressed: () {
                    selectedIndex = index;
                    context
                        .read<MenuBloc>()
                        .add(MenuIndexChangeEvent(selectedIndex));
                    goRouter.goNamed(menuItems[index].route);
                    if (isMobile) goRouter.pop();
                  },
                  isSelected: isSelected,
                  menuItem: menuItems[index],
                );
              }),
        );
      },
    );
  }
}
