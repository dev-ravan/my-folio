import 'package:my_folio/Utils/exports.dart';

class ImgIntroSection extends StatelessWidget {
  const ImgIntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final bool isMobile = Responsive.isMobile(context);
    final double imgHeight =
        isMobile ? 400 : MediaQuery.of(context).size.height / 1.4;
    return SizedBox(
      height: imgHeight,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            child: Container(
              height: 7,
              width: 80,
              color: theme.primary,
            ),
          ),
          Positioned(
            left: 0,
            child: Container(
              height: 75,
              width: 7,
              color: theme.primary,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 7,
              width: 80,
              color: theme.primary,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              height: 75,
              width: 7,
              color: theme.primary,
            ),
          ),
          Container(
            margin: isMobile ? p16 : p32,
            color: Colors.red[100],
          )
        ],
      ),
    );
  }
}
