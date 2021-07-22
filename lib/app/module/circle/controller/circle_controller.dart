import 'package:flutter_modular/flutter_modular.dart';
import 'package:widget_module_example/app/module/circle/store/circle_store.dart';

class CircleController {
  CircleStore circleStore = Modular.get<CircleStore>();

  increase() {
    circleStore.increaseSelectedPage();
  }
}
