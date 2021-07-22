import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:widget_module_example/app/module/square/controller/square_controller.dart';

class SquarePage extends StatefulWidget {
  @override
  _SquarePageState createState() => _SquarePageState();
}

class _SquarePageState extends ModularState<SquarePage, SquareController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.crop_square),
        onPressed: controller.increase,
      ),
      body: Center(
        child: Observer(
          name: 'SquareCounter Test',
          builder: (_) {
            return Text('SquareCounter: ${controller.squareStore.counter}');
          },
        ),
      ),
    );
  }
}
