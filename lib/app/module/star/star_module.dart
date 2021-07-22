import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:widget_module_example/app/module/star/controller/star_controller.dart';
import 'package:widget_module_example/app/module/star/page/star_page.dart';
import 'package:widget_module_example/app/module/star/store/star_store.dart';

class StarModule extends WidgetModule {
  @override
  final List<Bind> binds = [
    Bind((i) => StarStore()),
    Bind((i) => StarController()),
  ];

  @override
  Widget get view => StarPage();
}
