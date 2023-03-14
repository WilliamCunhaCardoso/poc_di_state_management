import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_di_state_management/modules/src/home/controller.dart';
import 'package:poc_di_state_management/modules/src/home/states.dart';

import '../stores/counter_store.dart';

class HomePage extends StatelessWidget {
  final HomeController controller;

  const HomePage({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        builder: (_, value, __) {
          if (value is SuccessState) {
            return Center(
              child: Text('The Button has been pressed $value times'),
            );
          }

          return const Center(child: Text('Press Any Button'));
        },
        // valueListenable: controller.store,
        valueListenable: controller.store,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () => controller.decrement(),
            heroTag: null,
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () => controller.increment(),
            heroTag: null,
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
