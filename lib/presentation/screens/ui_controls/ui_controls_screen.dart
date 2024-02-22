

import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {

  static const name = 'ui_controls_screen';
  
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),

      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView({
    super.key,
  });

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }
class _UiControlsViewState extends State<_UiControlsView> {

    bool isDeveloper = true;
    Transportation selectedTransportation = Transportation.car;
    bool wanstBreakfast = false;
    bool wanstLunch = false;
    bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [

        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles Adicionales'),
          value: isDeveloper, 
          onChanged: (value) => setState(() {
              isDeveloper = !isDeveloper;
            }),
        ),
        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('By car'),
              subtitle: const Text('Viajar por Carro'),
              value: Transportation.car, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              })
            ),
            RadioListTile(
              title: const Text('By boat'),
              subtitle: const Text('Viajar por bote'),
              value: Transportation.boat, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              })
            ),
            RadioListTile(
              title: const Text('By plane'),
              subtitle: const Text('Viajar por avion'),
              value: Transportation.plane, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plane;
              })
            ),
            RadioListTile(
              title: const Text('By subbmarino'),
              subtitle: const Text('Viajar por submarino'),
              value: Transportation.submarine, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarine;
              })
            )
          ],
        ),

        CheckboxListTile(
          title: const Text('Incluir Desayuno'),
          value: wanstBreakfast, 
          onChanged: (value) => setState(() {
            wanstBreakfast = !wanstBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Incluir Almuerzo'),
          value: wanstLunch, 
          onChanged: (value) => setState(() {
            wanstLunch = !wanstLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Incluir Cena'),
          value: wantsDinner, 
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}