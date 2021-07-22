import 'package:mobx/mobx.dart';

part 'square_store.g.dart';

class SquareStore = _SquareStoreBase with _$SquareStore;

abstract class _SquareStoreBase with Store {
  @observable
  int counter = 0;

  @action
  increaseSelectedPage() {
    counter = counter + 1;
  }
}
