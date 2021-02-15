import 'package:mobx/mobx.dart';
part 'display_name_controller.g.dart';

class SetDisplayNameController = _SetDisplayNameControllerBase
    with _$SetDisplayNameController;

abstract class _SetDisplayNameControllerBase with Store {
  @observable
  String displayName;

  @computed
  int get length => displayName.length;

  _SetDisplayNameControllerBase(this.displayName);

  void updateDisplayName() {}
}
