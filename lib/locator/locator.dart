import 'package:get_it/get_it.dart';
import 'package:tracksfer/screens/feed/feed_controller.dart';
import 'package:tracksfer/screens/groups/list/group_list_controller.dart';
import 'package:tracksfer/services/navigation/navigation_controller.dart';

final G = GetIt.instance;

void initLocator() {
  G.registerSingleton(NavigationController());
  G.registerSingleton(GroupListController());
  G.registerSingleton(FeedController());
}
