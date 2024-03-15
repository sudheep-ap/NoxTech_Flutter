import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:noxtech_flutter/injection.config.dart';
import 'package:http/http.dart' as http;

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() {
  getIt.registerLazySingleton<http.Client>(
    () => http.Client(),
  );
  getIt.init();
}





















//Clean Architectureb by Sudheep

// -lib
//   -data
//     -datasources
//       -screen1
//         -(implemenation of repo abstract class )
//     -local_db
//   -domain
//     -repositories
//        screen1
//          -(abstract class of repo) 
//     -models
//       -screen1
//     -usecases
//       -screen1
//         - usecases (abstract class of usecase)
//         - usecase implementation (implemenation of usecase abstract class )
//     -entities
//       - screen1
//   -presentation
//     -screens
//       -screen1
//         -bloc
//         -widgets 
//     -utils
//       -common_functions
//       -common_widgets
    
//   -core
//     -error
//       -(files)
//     -app_status.dart  
 
  