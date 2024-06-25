import 'package:go_router/go_router.dart';
import 'package:my_folio/Core/Routers/route_names.dart';
import 'package:my_folio/Features/About/Presentation/pages/about.dart';
import 'package:my_folio/Features/Contact/presentation/pages/contact.dart';
import 'package:my_folio/Features/Home/Presentation/pages/home.dart';
import 'package:my_folio/Features/Nav%20Bar/Presentation/Pages/nav_bar.dart';
import 'package:my_folio/Features/Projects/presentation/pages/projects.dart';
import 'package:my_folio/Features/Services/presentation/pages/services.dart';
import 'package:my_folio/Features/splash/splash.dart';
import 'package:my_folio/Utils/transition.dart';

final goRouter = GoRouter(initialLocation: "/", routes: [
  // 🥇 Initial Route
  GoRoute(
    path: "/",
    name: MyRouteNames.splash,
    pageBuilder: (context, state) => buildPageWithDefaultTransition(
      context: context,
      state: state,
      child: const SplashPage(),
    ),
  ),

  ShellRoute(builder: (context, state, child) => NavBar(child: child), routes: [
    // 🏠 Home Route
    GoRoute(
      path: "/${MyRouteNames.home}",
      name: MyRouteNames.home,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const HomePage(),
      ),
    ),

    // 😉 About Route
    GoRoute(
      path: "/${MyRouteNames.about}",
      name: MyRouteNames.about,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const AboutPage(),
      ),
    ),

    // 📃 Services Route
    GoRoute(
      path: "/${MyRouteNames.services}",
      name: MyRouteNames.services,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const ServicesPage(),
      ),
    ),

    // 💼 Projects Route
    GoRoute(
      path: "/${MyRouteNames.projects}",
      name: MyRouteNames.projects,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const ProjectsPage(),
      ),
    ),

    // 📞 Contact Route
    GoRoute(
      path: "/${MyRouteNames.contact}",
      name: MyRouteNames.contact,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const ContactPage(),
      ),
    ),
  ])
]);
