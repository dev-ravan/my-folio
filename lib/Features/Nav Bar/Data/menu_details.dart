import 'package:my_folio/Constants/icons.dart';
import 'package:my_folio/Core/Routers/route_names.dart';
import 'package:my_folio/Features/Nav%20Bar/Data/Models/menu_model.dart';

class MenuDetails {
  static String headerTitle = "vel-";
  static List<MenuModel> menuItems = [
    MenuModel(title: "Home", icon: MyIcons.home, route: MyRouteNames.home),
    MenuModel(title: "About", icon: MyIcons.about, route: MyRouteNames.about),
    MenuModel(
      title: "Services",
      icon: MyIcons.services,
      route: MyRouteNames.services,
    ),
    MenuModel(
      title: "Projects",
      icon: MyIcons.projects,
      route: MyRouteNames.projects,
    ),
    MenuModel(
      title: "Contact",
      icon: MyIcons.contact,
      route: MyRouteNames.contact,
    ),
  ];
}
