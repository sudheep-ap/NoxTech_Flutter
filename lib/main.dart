import 'package:flutter/material.dart';
import 'package:noxtech_flutter/presentation/screens/Home/bloc/home_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'injection.dart';
import 'presentation/screens/Home/home_page.dart';

void main() {
  configureDependencies();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => getIt<HomeBloc>(),
      ),
    ],
    child: const MaterialApp(home: NoxTechFlutterApp()),
  ));
}

class NoxTechFlutterApp extends StatelessWidget {
  const NoxTechFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
