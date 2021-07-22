import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:widget_module_example/app/module/star/controller/star_controller.dart';

class StarPage extends StatefulWidget {
  @override
  _StarPageState createState() => _StarPageState();
}

class _StarPageState extends ModularState<StarPage, StarController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      floatingActionButton: FloatingActionButton(
        isExtended: true,
        child: Icon(Icons.star),
        onPressed: controller.increase,
      ),
      body: Center(
        child: Observer(
          name: 'StarCounter Test',
          builder: (_) {
            return Text('StarCounter: ${controller.starStore.counter}', );
          },
        ),
      ),
    );
  }
}
