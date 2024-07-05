import 'package:my_folio/Features/About/Presentation/components/title_widget.dart';
import 'package:my_folio/Features/Contact/presentation/components/get_in_touch.dart';
import 'package:my_folio/Features/Contact/presentation/components/message_me.dart';
import 'package:my_folio/Utils/exports.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleWidget(
            title: "Contact",
          ),
          gap48,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: GetInTouch(),
              ),
              if (!isMobile) gap24,
              if (!isMobile)
                const Expanded(
                  child: MessageMe(),
                ),
            ],
          )
        ],
      ),
    ));
  }
}
