import 'package:flutter/widgets.dart';
import 'package:my_folio/Core/Routers/route_names.dart';

import '../../Utils/exports.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 500), () {
      return goRouter.goNamed(MyRouteNames.home);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: SizedBox(width: 200, child: Header())),
    );
  }
}
