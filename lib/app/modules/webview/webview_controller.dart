import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'webview_controller.g.dart';

@Injectable()
class WebviewController = _WebviewControllerBase with _$WebviewController;

abstract class _WebviewControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
