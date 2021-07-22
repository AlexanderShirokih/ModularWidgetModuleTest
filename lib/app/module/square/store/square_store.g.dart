// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'square_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SquareStore on _SquareStoreBase, Store {
  final _$counterAtom = Atom(name: '_SquareStoreBase.counter');

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  final _$_SquareStoreBaseActionController =
      ActionController(name: '_SquareStoreBase');

  @override
  dynamic increaseSelectedPage() {
    final _$actionInfo = _$_SquareStoreBaseActionController.startAction(
        name: '_SquareStoreBase.increaseSelectedPage');
    try {
      return super.increaseSelectedPage();
    } finally {
      _$_SquareStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter}
    ''';
  }
}
