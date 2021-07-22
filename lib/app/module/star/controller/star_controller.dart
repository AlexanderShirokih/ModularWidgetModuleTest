import 'package:flutter_modular/flutter_modular.dart';
import 'package:widget_module_example/app/module/star/store/star_store.dart';

class StarController {
  StarStore starStore = Modular.get<StarStore>();

  increase(){
    starStore.increaseSelectedPage();
  }
}
