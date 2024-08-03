import 'package:flutter/material.dart';

class AppBarLearn extends StatelessWidget {
  const AppBarLearn({super.key});

  final String _title = 'Welcome Learn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        //toolbarTextStyle: const TextStyle(color: Colors.red),
        //leadingWidth: 20, // < butonunu sola dogru ceker
        //actionsIconTheme: const IconThemeData(color: Colors.red, size: ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          const Center(
            child: CircularProgressIndicator(),
          ),
        ],
      ),
      body: const Column(),
    );
  }
}
