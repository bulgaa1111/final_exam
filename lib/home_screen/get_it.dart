import 'package:example/home_screen/get_it.dart';
import 'package:example/home_screen/home_screen_manager.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerLazySingleton(() => HomeScreenManager());
}
