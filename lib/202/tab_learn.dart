import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notcherValue = 10;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _tabController.animateTo(_MyTabViews.home.index);
          },
        ),
        appBar: AppBar(
            /*
          bottom: TabBar(controller: _tabController, tabs: const [
            Tab(text: 'Page 1 '),
            Tab(text: 'Page 2 '),
          ]),
          */
            ),
        // max 2 children verebiliriz cunku length = 2
        // yoksa crash atar
        body: _tabBarView(),
        bottomNavigationBar: BottomAppBar(
          notchMargin: _notcherValue,
          shape: const CircularNotchedRectangle(),
          child: TabBar(
            padding: EdgeInsets.zero,
            onTap: (int index) {},
            controller: _tabController,
            tabs: _MyTabViews.values
                .map((e) => Tab(text: e.name.toUpperCase()))
                .toList(),
          ),
        ),
      ),
    );
  }

  TabBarView _tabBarView() {
    return TabBarView(
      // saga, sola kaydirmayi kapatir
      physics: const NeverScrollableScrollPhysics(),
      controller: _tabController,
      children: [
        const ImageLearn(),
        IconLearn(),
        const ImageLearn(),
        IconLearn(),
      ],
    );
  }
}

enum _MyTabViews {
  home,
  settings,
  favorite,
  profile,
}

// on --> hangi item'a yazacagimizi soyluyoruz
extension _MyTabViewsExtension on _MyTabViews {}
