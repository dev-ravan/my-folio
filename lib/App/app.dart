import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_folio/Core/theme/theme_mode.dart';
import 'package:my_folio/Features/Nav%20Bar/Presentation/Pages/nav_bar.dart';
import 'package:my_folio/Features/Nav%20Bar/Presentation/bloc/menu_bloc.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MenuBloc>(
          create: (context) => MenuBloc(),
        )
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: lightMode,
          // darkTheme: darkMode,
          home: const NavBar()),
    );
  }
}
