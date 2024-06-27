import 'package:my_folio/Features/Nav%20Bar/Presentation/Components/floating_menu_widget.dart';
import 'package:my_folio/Utils/exports.dart';

class NavBar extends StatelessWidget {
  final Widget child;
  const NavBar({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);
    return Scaffold(
      // this to prevent the default sliding behaviour
      drawerEnableOpenDragGesture: false,
      floatingActionButton: isMobile ? const FloatingMenuWidget() : null,
      drawer: const SideMenuWidget(),
      body: Row(
        children: [
          if (!isMobile) const SideMenuWidget(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  left: !isMobile ? 30 : 20,
                  top: !isMobile ? 20 : 40,
                  right: !isMobile ? 30 : 20),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
