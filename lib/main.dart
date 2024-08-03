import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/202/tab_learn.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        tabBarTheme: const TabBarTheme(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.red,
          indicatorSize: TabBarIndicatorSize.label,
        ),
        bottomAppBarTheme: const BottomAppBarTheme(
          shape: CircularNotchedRectangle(),
        ),
        // indicator_learn kisminda eklendi
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: Colors.white),
        // list_tile_learn kisminda eklendi
        listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
        iconTheme: const IconThemeData(),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          iconColor: Colors.red,
          border: OutlineInputBorder(),
          labelStyle: TextStyle(color: Colors.lime),
          floatingLabelStyle: TextStyle(
              color: Colors.red, fontSize: 24, fontWeight: FontWeight.w600),
        ),
        textTheme: const TextTheme(
          headlineMedium: TextStyle(color: Colors.blue),
          // titledaki rengi degistiremedik
        ),
        textSelectionTheme: const TextSelectionThemeData(
            selectionColor: Colors.red,
            cursorColor: Colors.green,
            selectionHandleColor: Colors.black),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      home: const TabLearn(),
    );
  }
}
