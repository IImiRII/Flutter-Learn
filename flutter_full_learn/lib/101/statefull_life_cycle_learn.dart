import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.message});

  final String message;

  @override
  State<StatefullLifeCycleLearn> createState() =>
      _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _message = '';
  late bool _isOdd = false;

  // initState'ten sonra ekran cizimi baslar
  @override
  void initState() {
    _message = widget.message;
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
    print('a');
  }

  // init state'ten daha sonra calisir, draw'dan once calisir
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //print('c');
    _message = widget.message;
    _computeName();
    setState(() {});
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message) {
      print('b');
    }
  }

  //sayfanin dead oldugu andir. (ekranda her sey cizildikten sonra)
  @override
  void dispose() {
    super.dispose();
    print('alo');
    _message = '';
  }

  void _computeName() {
    if (_isOdd) {
      _message += ' Tek';
    } else {
      _message += ' Cift';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
