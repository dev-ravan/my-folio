import 'package:my_folio/Core/Theme/them_provider.dart';
import 'package:my_folio/Utils/exports.dart';
import 'package:provider/provider.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final isTablet = Responsive.isTablet(context);

    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: ToggleSwitch(
        isVertical: isTablet,
        minWidth: isTablet ? 50 : 90.0,
        minHeight: 50,
        cornerRadius: 10.0,
        activeBgColors: [
          [theme.primary],
          [theme.primary]
        ],
        activeFgColor: Colors.white,
        inactiveBgColor: Theme.of(context).scaffoldBackgroundColor,
        inactiveFgColor: Colors.white,
        initialLabelIndex: Provider.of<ThemeProvider>(context, listen: false)
            .themeSelectedIndex,
        totalSwitches: 2,
        customIcons: const [
          Icon(Icons.light_mode_outlined),
          Icon(Icons.dark_mode_outlined),
        ],
        radiusStyle: true,
        onToggle: (index) {
          Provider.of<ThemeProvider>(context, listen: false).toggleDarkMode();
        },
      ),
    );
  }
}
