import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/navigate_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

// Navigation bir butona basildiginda yeni bir ekran cikip orada
//  degisiklik yapip tekrar geri butona donme islemidir.

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  List<int> selectedItems = [];

  void addSelected(int index, bool isAdd) {
    setState(() {
      isAdd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () async {
              // async ile await ayni yerde kullanilmali
              // "navigateToWidgetNormal<bool>" -> geriye adamdan bool bir deger bekliyorum
              final response = await navigateToWidgetNormal<bool>(
                  context,
                  NavigateDetailLearn(
                    isOkay: selectedItems.contains(index),
                  ));
              if (response is bool) {
                addSelected(index, response);
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Placeholder(
                color:
                    selectedItems.contains(index) ? Colors.green : Colors.red,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          const NavigateDetailLearn();
        },
        child: const Icon(Icons.navigation_rounded),
      ),
    );
  }
}

// mixin constructor olmayan class
mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: const RouteSettings(),
      ),
    );
  }
}

// Future yan sayfadan bir data gelebilir ve sen bunu yakalayabilirsin demek
Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
  return Navigator.of(context).push<T>(
    MaterialPageRoute(
      builder: (context) {
        return widget;
      },
      fullscreenDialog: true,
      settings: const RouteSettings(),
    ),
  );
}
