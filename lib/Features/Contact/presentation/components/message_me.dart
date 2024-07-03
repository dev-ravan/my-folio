import 'package:my_folio/Features/Contact/data/contact_details.dart';
import 'package:my_folio/Features/Contact/presentation/components/msg_field.dart';
import 'package:my_folio/Features/Home/Presentation/components/common_button.dart';
import 'package:my_folio/Utils/exports.dart';
import 'package:url_launcher/url_launcher.dart';

class MessageMe extends StatelessWidget {
  const MessageMe({super.key});

  @override
  Widget build(BuildContext context) {
    // Theme
    final txtTheme = Theme.of(context).textTheme;
    // Global Key
    final formKey = GlobalKey<FormState>();
    // Controller
    final nameController = TextEditingController();
    final mailController = TextEditingController();
    final subjectController = TextEditingController();
    final msgController = TextEditingController();

    // Responsive
    final bool isDesktop = Responsive.isDesktop(context);

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ContactDetails.headline_2,
            style: txtTheme.headlineSmall,
          ),
          gap24,
          if (isDesktop)
            Row(
              children: [
                Expanded(
                    child: MsgField(controller: nameController, hint: "Name")),
                gap12,
                Expanded(
                    child: MsgField(controller: mailController, hint: "Email")),
              ],
            ),
          if (!isDesktop)
            Column(
              children: [
                MsgField(controller: nameController, hint: "Name"),
                gap12,
                MsgField(controller: mailController, hint: "Email"),
              ],
            ),
          gap12,
          MsgField(controller: subjectController, hint: "Subject"),
          gap12,
          MsgField(
            controller: msgController,
            hint: "Message",
            maxLines: 3,
          ),
          gap24,
          CommonButton(
              title: "Send Message",
              onTap: () {
                if (formKey.currentState!.validate()) {}
              }),
          gap24
        ],
      ),
    );
  }
}
