import 'package:my_folio/Core/Theme/them_provider.dart';
import 'package:my_folio/Features/Contact/presentation/bloc/contact_bloc.dart';
import 'package:my_folio/Utils/exports.dart';
import 'package:provider/provider.dart';
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
        child: ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
          builder: (context, child) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: Provider.of<ThemeProvider>(context).appTheme,
            routerConfig: goRouter,
          ),
        ),
      ),
    );
  }
}
