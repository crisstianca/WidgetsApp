

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';
  
  const SnackbarScreen({super.key});

  void showCustomSnackbar( BuildContext context ) {

    ScaffoldMessenger.of(context).clearSnackBars();

    final snackback = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok', onPressed: () {}),
      duration: const Duration( seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackback);
  }

  void openDialog( BuildContext context ) {

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('?Estas seguro?'),
        content: const Text('Deserunt culpa magna aliqua pariatur aliquip exercitation consectetur qui consectetur. Ea veniam cillum pariatur cillum esse nostrud et proident amet laboris. Ad excepteur laborum nostrud occaecat est veniam anim anim aute ipsum reprehenderit et. Mollit cupidatat in est dolor. Lorem et voluptate mollit magna laborum magna consectetur anim aliquip occaecat in sit eu mollit.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar')),
        ],
      ) 
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text('Magna irure cupidatat consectetur consectetur velit mollit minim ut velit dolor aliquip. Esse fugiat nostrud consequat mollit. Amet aliquip pariatur magna sit et aliquip proident reprehenderit aute sint est dolore duis. Id id laboris sunt commodo sit veniam occaecat qui amet exercitation. Minim consequat amet Lorem ad irure laborum non qui ea dolor. Ipsum adipisicing quis Lorem reprehenderit aute nulla exercitation eu enim nostrud qui est eiusmod fugiat.')
                ]);
              }, 
              child: const Text('Liciencias Usadas')
            ),

            FilledButton.tonal(
              onPressed: () => openDialog(context), 
              child: const Text('Mostrar dialogos')
            )

          ],
        )
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostra Snackbar'),
        icon: const Icon( Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context)
      ),
    );
  }
}