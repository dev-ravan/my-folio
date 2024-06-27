import 'package:my_folio/Utils/exports.dart';

class AppTextStyle {
  static AppTextStyle instance = AppTextStyle();

  TextStyle displayLarge = TextStyle(
    color: Palettes.blackColor,
    fontSize: 57,
    fontWeight: FontWeight.bold,
  );
  TextStyle displayMedium = TextStyle(
    color: Palettes.blackColor,
    fontSize: 45,
    fontWeight: FontWeight.bold,
  );
  TextStyle displaySmall = TextStyle(
    color: Palettes.violetColor,
    fontSize: 36,
    fontWeight: FontWeight.bold,
  );
  TextStyle headlineLarge = TextStyle(
    color: Palettes.violetColor,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
  TextStyle headlineMedium = TextStyle(
    color: Palettes.violetColor,
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );
  TextStyle headlineSmall = TextStyle(
    color: Palettes.violetColor,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
  TextStyle titleLarge = TextStyle(
    fontWeight: FontWeight.bold,
    color: Palettes.blackColor,
    fontSize: 22,
  );
  TextStyle titleMedium = TextStyle(
    fontWeight: FontWeight.bold,
    color: Palettes.outlineColor,
    fontSize: 16,
  );
  TextStyle titleSmall = TextStyle(
    color: Palettes.blackColor,
    fontSize: 14,
  );
  TextStyle labelLarge = TextStyle(
    color: Palettes.greyColor,
    fontSize: 14,
  );
  TextStyle labelMedium = TextStyle(
    color: Palettes.greyColor,
    fontSize: 12,
  );
  TextStyle labelSmall = TextStyle(
    color: Palettes.greyColor,
    fontSize: 11,
  );
  TextStyle bodyLarge = TextStyle(
    color: Palettes.blackColor,
    fontSize: 16,
  );
  TextStyle bodyMedium = TextStyle(
    color: Palettes.blackColor,
    fontSize: 14,
  );
  TextStyle bodySmall = TextStyle(
    color: Palettes.blackColor,
    fontSize: 12,
  );
}

Widget textThemeSample(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "displayLarge",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Text(
          "displayMedium",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text(
          "displaySmall",
          style: Theme.of(context).textTheme.displaySmall,
        ),
        Text(
          "headlineLarge",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(
          "headlineMedium",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          "headlineSmall",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          "titleLarge",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          "titleMedium",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          "titleSmall",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Text(
          "labelLarge",
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Text(
          "labelMedium",
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Text(
          "labelSmall",
          style: Theme.of(context).textTheme.labelSmall,
        ),
        Text(
          "bodyLarge",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          "bodyMedium",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          "bodySmall",
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    ),
  );
}
