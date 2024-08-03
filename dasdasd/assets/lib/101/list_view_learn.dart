import 'package:flutter/material.dart';

// uygulamanda cok fazla shrinkWrap vermemeye calis!

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headlineLarge,
              //maxLines: 1, --> kelime bara sigmayacak kadar buyukse alta gecmez
              //ornek: Merha , Merha
              //       ba
            ),
          ),
          Container(
            color: Colors.red,
            height: 300,
          ),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(color: Colors.green, height: 300, width: 100),
                Container(color: Colors.white, height: 300, width: 100),
                Container(color: Colors.green, height: 300, width: 100),
                Container(color: Colors.white, height: 300, width: 100),
                Container(color: Colors.green, height: 300, width: 100),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.close),
            color: Colors.white,
          ),
          //xx
          // FittedBox --> herhangi bir stringi boyutu ne olursa olsun ortalar (ornege bak)
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headlineLarge,
              //maxLines: 1, --> kelime bara sigmayacak kadar buyukse alta gecmez
              //ornek: Merha , Merha
              //       ba
            ),
          ),
          Container(
            color: Colors.red,
            height: 300,
          ),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(color: Colors.green, height: 300, width: 100),
                Container(color: Colors.white, height: 300, width: 100),
                Container(color: Colors.green, height: 300, width: 100),
                Container(color: Colors.white, height: 300, width: 100),
                Container(color: Colors.green, height: 300, width: 100),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.close),
            color: Colors.white,
          ),
          // ekrani her asagi kaydirdigimizda metod calisiyor
          const _ListDemoState(),
        ],
      ),
    );
  }
}

class _ListDemoState extends StatefulWidget {
  const _ListDemoState({super.key});

  @override
  State<_ListDemoState> createState() => __ListDemoStateState();
}

class __ListDemoStateState extends State<_ListDemoState> {
  @override
  void initState() {
    super.initState();
    print('hello');
  }

  @override
  void dispose() {
    super.dispose();
    print('exit');
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


















/*
// ekranin yarisini kullanir.
Column(
        children: [
          const Spacer(),
          Expanded(
            child: ListView(
              children: [
                // FittedBox --> herhangi bir stringi boyutu ne olursa olsun ortalar (ornege bak)
                FittedBox(
                  child: Text(
                    'Merhaba',
                    style: Theme.of(context).textTheme.headlineLarge,
                    //maxLines: 1, --> kelime bara sigmayacak kadar buyukse alta gecmez
                    //ornek: Merha , Merha
                    //       ba
                  ),
                ),
                Container(
                  color: Colors.red,
                  height: 300,
                ),
                const Divider(),
                Container(
                  color: Colors.green,
                  height: 300,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.close),
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
 */


/*
ListView(
        children: [
          // FittedBox --> herhangi bir stringi boyutu ne olursa olsun ortalar (ornege bak)
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headlineLarge,
              //maxLines: 1, --> kelime bara sigmayacak kadar buyukse alta gecmez
              //ornek: Merha , Merha
              //       ba
            ),
          ),
          Container(
            color: Colors.red,
            height: 300,
          ),
          const Divider(),
          Container(
            color: Colors.green,
            height: 300,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.close),
            color: Colors.white,
          )
        ],
      ),
 */