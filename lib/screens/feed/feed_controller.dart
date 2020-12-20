import 'package:mobx/mobx.dart';
part 'feed_controller.g.dart';

class FeedController = _FeedControllerBase with _$FeedController;

abstract class _FeedControllerBase with Store {
  //look at the other controllers to see how to use mobx controller
  //@observable for a variable that needs to update ui when updated
  //@computed for a variable that accesses a observable and needs to update ui when the observable is updated
  //@action for methods that change observable values
}
