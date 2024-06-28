import 'package:my_folio/Features/About/Presentation/components/title_widget.dart';
import 'package:my_folio/Features/Services/data/services_details.dart';
import 'package:my_folio/Features/Services/presentation/component/service_widget.dart';
import 'package:my_folio/Utils/exports.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Responsive
    final bool isMobile = Responsive.isMobile(context);
    final bool isTablet = Responsive.isTablet(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWidget(title: ServiceDetails.title),
          gap48,
          GridView.builder(
            shrinkWrap: true,
            itemCount: ServiceDetails.services.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                crossAxisCount: isTablet
                    ? 2
                    : isMobile
                        ? 1
                        : 3),
            itemBuilder: (context, index) {
              final service = ServiceDetails.services[index];
              return ServiceWidget(serviceDetail: service);
            },
          ),
          gap24
        ],
      ),
    ));
  }
}
