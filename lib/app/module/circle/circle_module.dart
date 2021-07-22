import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:widget_module_example/app/module/circle/controller/circle_controller.dart';
import 'package:widget_module_example/app/module/circle/page/circle_page.dart';
import 'package:widget_module_example/app/module/circle/store/circle_store.dart';

class CircleModule extends WidgetModule {
  @override
  final List<Bind> binds = [
    Bind((i) => CircleStore()),
    Bind((i) => CircleController()),
  ];

  @override
  Widget get view => CirclePage();
}
