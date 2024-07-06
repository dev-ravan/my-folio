import 'package:my_folio/Features/Contact/data/contact_details.dart';
import 'package:my_folio/Features/Contact/presentation/components/message_me.dart';
import 'package:my_folio/Utils/exports.dart';

class GetInTouch extends StatelessWidget {
  const GetInTouch({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);

    final txtTheme = Theme.of(context).textTheme;
    final theme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ContactDetails.headline_1,
          style: txtTheme.headlineSmall,
        ),
        gap24,
        Text(
          ContactDetails.contactContent,
          style: txtTheme.titleMedium!.copyWith(fontWeight: FontWeight.normal),
        ),
        gap32,
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: ContactDetails.contactInfo.length,
            itemBuilder: (context, index) {
              final data = ContactDetails.contactInfo[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: ListTile(
                  leading: SvgPicture.asset(
                    data.icon,
                    height: 32,
                    width: 32,
                    // ignore: deprecated_member_use
                    color: theme.primary,
                  ),
                  title: Text(
                    data.title,
                    style: txtTheme.bodyLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    data.subTitle,
                    style: txtTheme.bodySmall,
                  ),
                ),
              );
            }),
        gap12,
        if (isMobile) const MessageMe()
      ],
    );
  }
}
