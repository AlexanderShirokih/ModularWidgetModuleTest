import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:widget_module_example/app/module/square/controller/square_controller.dart';
import 'package:widget_module_example/app/module/square/page/square_page.dart';
import 'package:widget_module_example/app/module/square/store/square_store.dart';

class SquareModule extends WidgetModule {
  @override
  final List<Bind> binds = [
    Bind((i) => SquareStore()),
    Bind((i) => SquareController()),
  ];

  @override
  Widget get view => SquarePage();
}
