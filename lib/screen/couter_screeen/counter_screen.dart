import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../view_model/counter_view_moodel.dart';

class CounterWidget extends ConsumerWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Count: ${counter.count}',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => ref.read(counterProvider.notifier).decrement(),
              icon: const Icon(Icons.remove),
            ),
            IconButton(
              onPressed: () => ref.read(counterProvider.notifier).reset(),
              icon: const Icon(Icons.refresh),
            ),
            IconButton(
              onPressed: () => ref.read(counterProvider.notifier).increment(),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ],
    );
  }
}
