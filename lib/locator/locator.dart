import 'package:get_it/get_it.dart';
import 'package:tracksfer/screens/core/login/login_controller.dart';

final G = GetIt.instance;

void initLocator() {
  G.registerSingleton<LoginController>(LoginController());
}