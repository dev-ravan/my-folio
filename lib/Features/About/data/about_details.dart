import 'package:my_folio/Features/About/data/Model/skill_mod.dart';

class AboutDetails {
  static String title = "About Me";
  static String myName = "I'm Velmurugan and ";
  static String myRole = "Flutter Developer";
  static String content =
      "I am a dedicated and enthusiastic Flutter developer with 1.5 years of experience in software development. My expertise lies in building diverse mobile and desktop applications, as well as creating websites and web apps using Flutter. I am proficient in utilizing state management solutions such as BLoC and Provider. My technical toolkit includes experience with Firebase for backend services and local databases like SQLite and Hive for data storage. Additionally, I have worked extensively with REST API integrations to ensure seamless communication between applications and backend services. I am also well-versed in implementing Clean Architecture to maintain scalable and maintainable codebases.In addition to my development skills, I have a keen eye for design and have undertaken several design projects using Figma.";

  static String birthDay = "12 November 2001";
  static String website = "www.dummy.com";
  static String degree = "BCA";
  static String city = "Coimbatore";
  static String age = "23";
  static String email = "velmurugan1211r@gmail.com";
  static String phone = "9361797872";
  static String freelance = "Available";

  static List<SkillsMod> techSkills = [
    SkillsMod(skill: "Flutter & Dart", percentage: "80"),
    SkillsMod(skill: "Firebase", percentage: "70"),
    SkillsMod(skill: "Hive & Sqflite", percentage: "60"),
    SkillsMod(skill: "Figma", percentage: "70"),
    SkillsMod(skill: "Canva", percentage: "80"),
    SkillsMod(skill: "Github", percentage: "70"),
    SkillsMod(skill: "Bit Bucket", percentage: "40"),
  ];
}
