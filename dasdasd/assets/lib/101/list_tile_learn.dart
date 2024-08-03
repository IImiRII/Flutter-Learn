import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  final imageUrl = 'https://picsum.photos/200/300';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: const RandomImage(),
                  //dense: true, // olabildigince sıkıstırmaya calisiyo
                  //contentPadding: EdgeInsets.zero, --> main.dartta temada verdik
                  subtitle: const Text('How do you sue your card?'),
                  minVerticalPadding: 0,
                  dense: true,
                  leading: Container(
                      alignment: Alignment.topCenter,
                      height: 100,
                      width: 30,
                      color: Colors.red,
                      child: const Icon(Icons.money)),
                  trailing: const SizedBox(
                    child: Icon(Icons.chevron_right),
                  ),

                  onTap: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


/*
trailing: Container(
width: 20,
color: Colors.red,
child: const SizedBox(
child: Icon(Icons.chevron_right),
    ),
  ), 
*/