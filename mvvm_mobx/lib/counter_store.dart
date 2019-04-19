import 'package:mobx/mobx.dart';

part 'counter_store.g.dart';


class CounterStore = _CounterStore with _$CounterStore;


abstract class _CounterStore implements Store {

  @observable
  bool navigatorToSecondScreen = false;

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
    if(value == 5) {
      navigatorToSecondScreen = true;
    }
  }

  @action
  void clear(){
    value = 0;
    navigatorToSecondScreen = false;
  }
}