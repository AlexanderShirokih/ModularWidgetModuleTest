import 'package:flutter_modular/flutter_modular.dart';
import 'package:widget_module_example/app/module/home/home_page.dart';

class HomeModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => HomePage()),
      ];
}
