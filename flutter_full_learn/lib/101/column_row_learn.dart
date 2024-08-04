import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(flex: 2),
          const Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('a'),
                Text('a1'),
                Text('a2'),
              ],
            ),
          ),
          const SizedBox(
            height: ProjectContainerSizes.cardHeight,
            child: Column(
              children: [
                SizedBox(width: 50, child: Text('data')),
                SizedBox(width: 50, child: Text('data')),
                SizedBox(width: 50, child: Text('data')),
                Spacer(),
                SizedBox(width: 50, child: Text('data')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectContainerSizes {
  static const double cardHeight = 200;
}
