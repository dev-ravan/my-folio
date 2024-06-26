import 'dart:async';
import 'package:my_folio/Features/Home/Data/home_details.dart';
import 'package:my_folio/Utils/exports.dart';

class RoleWidget extends StatefulWidget {
  const RoleWidget({super.key});

  @override
  State<RoleWidget> createState() => _RoleWidgetState();
}

class _RoleWidgetState extends State<RoleWidget>
    with SingleTickerProviderStateMixin {
  List<String> roles = HomeDetails.roles;
  int _roleIndex = 0;
  String _currentText = "";
  int _charIndex = 0;
  late Timer _typeTimer;
  late AnimationController _cursorController;
  bool _showCursor = true;

  @override
  void initState() {
    super.initState();
    _cursorController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..addStatusListener((status) {
        setState(() {
          _showCursor = !_showCursor;
        });
      });
    _cursorController.repeat(reverse: true);
    _startTyping();
  }

  void _startTyping() {
    _typeTimer = Timer.periodic(const Duration(milliseconds: 200), (timer) {
      setState(() {
        if (_charIndex < roles[_roleIndex].length) {
          _currentText += roles[_roleIndex][_charIndex];
          _charIndex++;
        } else {
          _typeTimer.cancel();
          Timer(const Duration(milliseconds: 1500), () {
            setState(() {
              _currentText = "";
              _charIndex = 0;
              _roleIndex = (_roleIndex + 1) % roles.length;
              _startTyping();
            });
          });
        }
      });
    });
  }

  @override
  void dispose() {
    _typeTimer.cancel();
    _cursorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final theme = Theme.of(context).colorScheme;
    return RichText(
      text: TextSpan(
        text: "I'm a ",
        style: textTheme.headlineMedium,
        children: [
          TextSpan(
            text: _currentText,
            style: textTheme.headlineMedium!
                .copyWith(color: theme.primary, letterSpacing: 1.5),
          ),
          TextSpan(
            text: _showCursor ? "|" : " ",
            style:
                TextStyle(color: theme.primary, fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
