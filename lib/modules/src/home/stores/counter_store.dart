import 'package:flutter/material.dart';

import '../states.dart';

class CounterStore extends ValueNotifier<ApplicationState<int>> {
  CounterStore() : super(InitialState(0)) {
    _counter = (value as InitialState<int>).data ?? 0;
  }

  int _counter = 0;

  void increment() {
    value = SuccessState(_counter++);
  }

  void decrement() {
    value = SuccessState(_counter--);
  }
}
