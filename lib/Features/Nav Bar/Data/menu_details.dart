import 'package:my_folio/Constants/icons.dart';
import 'package:my_folio/Features/Nav%20Bar/Data/Models/menu_model.dart';

class MenuDetails {
  static String headerTitle = "vel-";
  static List<MenuModel> menuItems = [
    MenuModel(title: "Home", icon: MyIcons.home, route: ""),
    MenuModel(title: "About", icon: MyIcons.about, route: ""),
    MenuModel(title: "Services", icon: MyIcons.services, route: ""),
    MenuModel(title: "Projects", icon: MyIcons.projects, route: ""),
    MenuModel(title: "Contact", icon: MyIcons.contact, route: ""),
  ];
}
