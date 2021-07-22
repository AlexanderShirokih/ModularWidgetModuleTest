import 'package:flutter_modular/flutter_modular.dart';
import 'package:widget_module_example/app/module/home/home_module.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
      ];
}
