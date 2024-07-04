import 'package:my_folio/Features/Contact/presentation/bloc/contact_bloc.dart';
import 'package:my_folio/Utils/exports.dart';
import 'package:toastification/toastification.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MenuBloc>(
          create: (context) => MenuBloc(),
        ),
        BlocProvider<ContactBloc>(
          create: (context) => ContactBloc(),
        ),
      ],
      child: ToastificationWrapper(
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: lightMode,
          // darkTheme: darkMode,
          routerConfig: goRouter,
        ),
      ),
    );
  }
}
