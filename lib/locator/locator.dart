import 'package:get_it/get_it.dart';
import 'package:tracksfer/services/navigation/navigation_controller.dart';

final G = GetIt.instance;

void initLocator() {
  G.registerSingleton(NavigationController());
}
