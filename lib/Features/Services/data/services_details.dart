import 'package:my_folio/Features/Services/data/model/service_mod.dart';
import 'package:my_folio/Utils/exports.dart';

class ServiceDetails {
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
        "Creating tailored mobile applications that cater to specific client needs. This involves understanding the client's requirements, designing user-friendly interfaces, and developing robust functionalities to deliver a seamless user experience.",
    logo: MyIcons.mobileApp);
final _crossApps = ServicesModel(
    title: "Cross-Platform Apps",
    desc:
        "Developing applications that work flawlessly on both iOS and Android platforms using Flutter. This ensures a consistent user experience across different devices and operating systems, reducing development time and cost.",
    logo: MyIcons.crossApp);
final _apiIntegration = ServicesModel(
    title: "API Integration",
    desc:
        "Connecting mobile and web applications to various third-party services through APIs. This allows apps to access and use external data and functionalities, such as weather information, payment processing, social media integration, and more.",
    logo: MyIcons.api);
final _uiDesign = ServicesModel(
    title: "UI Design",
    desc:
        "Designing intuitive and engaging user interfaces that enhance the overall user experience. This includes creating visually appealing layouts, interactive elements, and ensuring that the app is easy to navigate.",
    logo: MyIcons.uiDesign);
final _webApp = ServicesModel(
    title: "Web App Development",
    desc:
        "Building web applications that offer a native app-like experience. PWAs are reliable, fast, and engaging, providing offline capabilities, push notifications, and smooth performance across various devices and browsers.",
    logo: MyIcons.webApp);
final _website = ServicesModel(
    title: "Website Development",
    desc:
        "Developing professional and attractive websites for businesses. This involves designing and building a site that effectively showcases the company’s services, products, and brand identity, with a focus on usability and accessibility.",
    logo: MyIcons.website);
