// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies

mixin _$CounterStore on _CounterStore, Store {
  final _$navigatorToSecondScreenAtom =
      Atom(name: '_CounterStore.navigatorToSecondScreen');

  @override
  bool get navigatorToSecondScreen {
    _$navigatorToSecondScreenAtom.reportObserved();
    return super.navigatorToSecondScreen;
  }

  @override
  set navigatorToSecondScreen(bool value) {
    _$navigatorToSecondScreenAtom.context
        .checkIfStateModificationsAreAllowed(_$navigatorToSecondScreenAtom);
    super.navigatorToSecondScreen = value;
    _$navigatorToSecondScreenAtom.reportChanged();
  }

  final _$valueAtom = Atom(name: '_CounterStore.value');

  @override
  int get value {
    _$valueAtom.reportObserved();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.context.checkIfStateModificationsAreAllowed(_$valueAtom);
    super.value = value;
    _$valueAtom.reportChanged();
  }

  final _$_CounterStoreActionController =
      ActionController(name: '_CounterStore');

  @override
  void increment() {
    final _$actionInfo = _$_CounterStoreActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$_CounterStoreActionController.endAction(_$actionInfo);
    }
  }
}
