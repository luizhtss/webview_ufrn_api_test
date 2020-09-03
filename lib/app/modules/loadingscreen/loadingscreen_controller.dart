import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'loadingscreen_controller.g.dart';

@Injectable()
class LoadingscreenController = _LoadingscreenControllerBase
    with _$LoadingscreenController;

abstract class _LoadingscreenControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
