import 'package:my_folio/Utils/exports.dart';

class Responsive {
  // Mobile
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;
  // Tablet
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600 &&
      MediaQuery.of(context).size.width < 1200;
  // Desktop
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;
}
