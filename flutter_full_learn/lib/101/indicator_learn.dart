import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          CenterCircularRedProgress(),
        ],
      ),
      // CircularProgressIndicator baslangicta loading state koyar.
      body: const Center(child: LinearProgressIndicator()),
    );
  }
}

class CenterCircularRedProgress extends StatelessWidget {
  const CenterCircularRedProgress({
    super.key,
  });

  final redColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Center(
      // basiklik olmasin diye centerin icine yazdik
      child: CircularProgressIndicator(
        color: redColor,
        strokeAlign: 5,
        strokeWidth: 5,
        value: 0.5,
        backgroundColor: Colors.white,
      ),
    );
  }
}
