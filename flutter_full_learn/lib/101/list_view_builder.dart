import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // ListView.builder gorebildigi alan kadar cizer
      body: ListView.separated(
        itemCount: 15,
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.white,
          );
        },
        itemBuilder: (context, index) {
          print('$index');
          return SizedBox(
            height: 200,
            child: Column(
              children: [
                Expanded(child: Image.network('https://picsum.photos/200')),
                Text('$index'),
              ],
            ),
          );
        },
      ),
      /*
      ListView.builder(
        itemBuilder: (context, index) {
          print('$index');
          return Column(
            children: [
              const Placeholder(
                color: Colors.red,
              ),
              Text('$index'),
            ],
          );
        },
      ), */
    );
  }
}
