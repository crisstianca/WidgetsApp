

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {

  static const name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final styleCounterText = Theme.of(context).textTheme.titleLarge;

    final int clickCounter = ref.watch( counterProvider );
    final bool clickTheme = ref.watch( themeProvider );
  
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Riverpod'),
        actions: [
          IconButton(
            icon:  clickTheme
              ? const Icon(Icons.light_mode_outlined)
              : const Icon(Icons.dark_mode_outlined)
           ,
            onPressed: () {
              ref.read(themeProvider.notifier).update((state) => !state);
            }, 
          ),
        ],
      ),
      body: Center(
        child: Text('Valor: $clickCounter', style: styleCounterText,)
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add),
        onPressed: ()  {
          // ref.read(counterProvider.notifier).state++;
          ref.read(counterProvider.notifier).update((state) => state + 1);
        } ,
      ),
    );
  }
}