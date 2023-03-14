import 'stores/counter_store.dart';

class HomeController {
  final CounterStore store;

  HomeController(this.store);

  void increment() {
    store.increment();
  }

  void decrement() {
    store.decrement();
  }
}
