import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/onboarding_model/counter_view_model.dart';

final counterProvider = StateNotifierProvider<CounterNotifier, CounterModel>(
  (ref) => CounterNotifier(),
);

class CounterNotifier extends StateNotifier<CounterModel> {
  CounterNotifier() : super(CounterModel(0));

  void increment() {
    state = CounterModel(state.count + 1);
  }

  void decrement() {
    state = CounterModel(state.count - 1);
  }

  void reset() {
    state = CounterModel(0);
  }
}
