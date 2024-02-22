
import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {

  static const name = 'progress_screen';
  
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Text('Circular y Progress Indicator'),
          SizedBox(height: 30,),
          CircularProgressIndicator( strokeWidth: 2, backgroundColor: Colors.black45,),

          SizedBox(height: 30,),
          Text('Circular y Lienar Controlado'),
           SizedBox(height: 30,),
           _ControlledProgresIndicator()
           
        ]
      ),
    );
  }
}

class _ControlledProgresIndicator extends StatelessWidget {
  const _ControlledProgresIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 100), (value) {
        return (value * 2) / 100;
      }).takeWhile((value) => value < 100),
      builder: (context, snapshot) {
        final progressValue = snapshot.data ?? 0;
        return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                value: progressValue,
                strokeWidth: 2,
                backgroundColor: Colors.black12,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: LinearProgressIndicator( value: progressValue,)
              ),
            ],
          ),
        );
      },
    );
  }
}