import 'package:my_folio/Features/Contact/data/model/contact_mod.dart';
import 'package:my_folio/Utils/exports.dart';

class ContactDetails {
  static String headline_1 = "Get In Touch";
  static String headline_2 = "Message Me";
  static String contactContent =
      "Always available for freelance work if the right project comes along.\tFeel free contact me!";
  static List<ContactMod> contactInfo = [
    ContactMod(
        title: "Location",
        subTitle: "1/56, Pannai street, Nagapattinam - 614 711",
        icon: MyIcons.location),
    ContactMod(
        title: "Call Me", subTitle: "+91 9361797872", icon: MyIcons.call),
    ContactMod(
        title: "Mail Me",
        subTitle: "velmurugan1211r@gmail.com",
        icon: MyIcons.mail),
  ];
}
