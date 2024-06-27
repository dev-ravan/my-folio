import 'package:my_folio/Features/Services/data/model/service_mod.dart';
import 'package:my_folio/Utils/exports.dart';

class ServiceDetails {
  static String title = "Services";
  static List<ServicesModel> services = [
    _mobileApps,
    _crossApps,
    _apiIntegration,
    _uiDesign,
    _webApp,
    _website
  ];
}

final _mobileApps = ServicesModel(
    title: "Mobile Apps",
    desc:
        "Creating tailored mobile applications that cater to specific client needs.",
    logo: MyIcons.mobileApp);
final _crossApps = ServicesModel(
    title: "Cross-Platform Apps",
    desc:
        "Developing applications that work flawlessly on both iOS and Android platforms using Flutter. ",
    logo: MyIcons.crossApp);
final _apiIntegration = ServicesModel(
    title: "API Integration",
    desc:
        "Connecting mobile and web applications to various third-party services through APIs. ",
    logo: MyIcons.api);
final _uiDesign = ServicesModel(
    title: "UI Design",
    desc:
        "Designing intuitive and engaging user interfaces that enhance the overall user experience. ",
    logo: MyIcons.uiDesign);
final _webApp = ServicesModel(
    title: "Web App Development",
    desc: "Building web applications that offer a native app-like experience.",
    logo: MyIcons.webApp);
final _website = ServicesModel(
    title: "Website Development",
    desc:
        "Developing professional and attractive websites for businesses and e-commerce websites. ",
    logo: MyIcons.website);
