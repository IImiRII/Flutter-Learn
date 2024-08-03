import 'package:flutter/material.dart';

class NavigateDetailLearn extends StatefulWidget {
  const NavigateDetailLearn({super.key, this.isOkay = false});
  final bool isOkay;

  @override
  State<NavigateDetailLearn> createState() => _NavigateDetailLearnState();
}

class _NavigateDetailLearnState extends State<NavigateDetailLearn> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            // geriye true deger dondur
            Navigator.of(context).pop(!widget.isOkay);
          },
          label: widget.isOkay ? const Text('Red') : const Text('Onayla'),
          icon: Icon(Icons.check,
              color: widget.isOkay ? Colors.red : Colors.green),
        ),
      ),
    );
  }
}
