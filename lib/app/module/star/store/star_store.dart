import 'package:mobx/mobx.dart';

part 'star_store.g.dart';

class StarStore = _StarStoreBase with _$StarStore;

abstract class _StarStoreBase with Store {
  @observable
  int counter = 0;

  @action
  increaseSelectedPage() {
    counter = counter + 1;
  }
}
