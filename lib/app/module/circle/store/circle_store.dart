import 'package:mobx/mobx.dart';

part 'circle_store.g.dart';

class CircleStore = _CircleStoreBase with _$CircleStore;

abstract class _CircleStoreBase with Store {
  @observable
  int counter = 0;

  @action
  increaseSelectedPage() {
    counter = counter + 1;
  }
}
