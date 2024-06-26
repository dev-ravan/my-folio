import 'package:my_folio/Features/Home/Presentation/components/basic_intro.dart';
import 'package:my_folio/Features/Home/Presentation/components/img_intro_section.dart';
import 'package:my_folio/Utils/exports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);
    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(flex: 2, child: BasicIntroSection()),
            if (!isMobile) const Expanded(child: ImgIntroSection())
          ],
        ),
      ),
    );
  }
}
