import 'package:my_folio/Features/About/data/Model/skill_mod.dart';

class AboutDetails {
  static String myMailId = "velmurugan1211r@gmail.com";
  static String title = "About Me";
  static String myName = "I'm Velmurugan and ";
  static String myRole = "Flutter Developer";
  static String content =
      "I am a dedicated and enthusiastic Flutter developer with 1.5 years of experience in software development. My expertise lies in building diverse mobile and desktop applications, as well as creating websites and web apps using Flutter. I am proficient in utilizing state management solutions such as BLoC and Provider. My technical toolkit includes experience with Firebase for backend services and local databases like SQLite and Hive for data storage. Additionally, I have worked extensively with REST API integrations to ensure seamless communication between applications and backend services. I am also well-versed in implementing Clean Architecture to maintain scalable and maintainable codebases.In addition to my development skills, I have a keen eye for design and have undertaken several design projects using Figma.";

  static String birthDay = "12 November 2001";
  static String website = "https://dev-ravan.github.io/";
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
    SkillsMod(skill: "Bit Bucket", percentage: "50"),
  ];
}

enum EducationDetailsEnum {
  college(
      date: "2019 - 2022",
      name: "Bachelor of Computer Application",
      educationCenter: "MIET Arts & Science College",
      percentage: "87%",
      address: "Pudukkottai Main Road",
      pincode: "Trichy - 620 007"),
  higherSecondaryScl(
      date: "2018 - 2019",
      name: "Higher Secondary Education",
      educationCenter: "Govt- Higher Secondary School",
      percentage: "66%",
      address: "Thagattur Subramanyan Kadu",
      pincode: "Nagapattinam - 614 714"),
  higherScl(
      date: "2016 - 2017",
      name: "Higher Education",
      educationCenter: "Govt- High School",
      percentage: "89%",
      address: "Kurumbal Road Manali",
      pincode: "Thiruvarur - 610 203");

  final String date;
  final String name;
  final String educationCenter;
  final String percentage;
  final String address;
  final String pincode;
  const EducationDetailsEnum({
    required this.date,
    required this.name,
    required this.educationCenter,
    required this.percentage,
    required this.address,
    required this.pincode,
  });
}

enum ExperienceDetailsEnum {
  secondCompany(
      date: "Jun 2023 - present",
      role: "Flutter Developer",
      company: "Atre Health Tech Pvt Ltd",
      address: "PSG Foundry, Neelambur",
      pincode: "Coimbatore - 641 062"),
  firstCompany(
      date: "Aug 2022 - May 2023",
      role: "Software Developer",
      company: "Meark Enterprise Pvt Ltd",
      address: "BR Puram Industrial Estate, Peelamedu",
      pincode: "Coimbatore - 641 004"),
  ;

  final String date;
  final String role;
  final String company;

  final String address;
  final String pincode;
  const ExperienceDetailsEnum({
    required this.date,
    required this.role,
    required this.company,
    required this.address,
    required this.pincode,
  });
}
