// ignore_for_file: deprecated_member_use

import 'package:my_folio/Features/Services/data/model/service_mod.dart';
import 'package:my_folio/Utils/exports.dart';

class ServiceWidget extends StatelessWidget {
  final ServicesModel serviceDetail;
  const ServiceWidget({super.key, required this.serviceDetail});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: theme.outline.withOpacity(0.2), width: 1.5),
        borderRadius: BorderRadius.circular(5),
        color: theme.secondary,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            serviceDetail.logo,
            height: 50,
            width: 50,
            color: theme.primary,
          ),
          gap12,
          Text(
            serviceDetail.title,
            style: textTheme.titleMedium,
          ),
          gap12,
          Text(
            serviceDetail.desc,
            textAlign: TextAlign.center,
            style: textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
