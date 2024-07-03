import 'package:my_folio/Constants/images.dart';
import 'package:my_folio/Features/Projects/data/model/project_mod.dart';

class ProjectDetails {
  static List<ProjectMod> projects = [
    project_1,
    project_2,
    project_3,
    project_4,
    project_5,
    project_6,
  ];
}

// Projects
final ProjectMod project_1 = ProjectMod(
    title: "Taskify",
    image: MyImages.taskify,
    gitLink: "https://github.com/dev-ravan/taskify");
final ProjectMod project_2 = ProjectMod(
    title: "My Folio",
    image: MyImages.myFolio,
    gitLink: "https://github.com/dev-ravan/my-folio");
final ProjectMod project_3 = ProjectMod(
    title: "3D Model View",
    image: MyImages.threeDView,
    gitLink: "https://github.com/dev-ravan/3d_view_flutter");
final ProjectMod project_4 = ProjectMod(
    title: "Business Website", image: MyImages.atreSite, gitLink: "");
final ProjectMod project_5 = ProjectMod(
    title: "Mobstick",
    image: MyImages.mobStick,
    gitLink: "https://github.com/dev-ravan/2way_Mqtt_Control");
final ProjectMod project_6 = ProjectMod(
    title: "Plantify",
    image: MyImages.plantify,
    gitLink: "https://github.com/dev-ravan/ui_challenge");
