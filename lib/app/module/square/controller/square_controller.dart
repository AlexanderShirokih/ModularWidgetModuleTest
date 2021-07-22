import 'package:flutter_modular/flutter_modular.dart';
import 'package:widget_module_example/app/module/square/store/square_store.dart';

class SquareController {
  SquareStore squareStore = Modular.get<SquareStore>();

  increase(){
    squareStore.increaseSelectedPage();
  }
}
