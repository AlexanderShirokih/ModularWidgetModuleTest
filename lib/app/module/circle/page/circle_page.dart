import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:widget_module_example/app/module/circle/controller/circle_controller.dart';

class CirclePage extends StatefulWidget {
  @override
  _CirclePageState createState() => _CirclePageState();
}

class _CirclePageState extends ModularState<CirclePage, CircleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.circle),
        onPressed: controller.increase,
      ),
      body: Center(
        child: Observer(
          name: 'CircleCounter Test',
          builder: (_) {
            return Text('CircleCounter: ${controller.circleStore.counter}');
          },
        ),
      ),
    );
  }
}
