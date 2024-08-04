import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});

  final String data = 'Data';

  // build widgetlarimizin olusturulmasi icin donen ana yeri verir, ekranlarimizi gelistiririz.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleTextWidget(title: data),
          TitleTextWidget(title: data),
          TitleTextWidget(title: data),
          TitleTextWidget(title: data),
          TitleTextWidget(title: data),
          const _CustomController(),
          _emptyBox(),
        ],
      ),
    );
  }
}

SizedBox _emptyBox() => const SizedBox(height: 10);

// _ mantigi bu sayfaya ozel olan bir StatelessWidget demek
class _CustomController extends StatelessWidget {
  const _CustomController({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.title});

  // String title; --> ERROR! sonradan degisebilen verielr Stateless Widgetta olamaz!
  final String? title;
  // sadece nullable olarak yazabilirsin ama bunu constructorda parametre olarak vermen lazim!
  // final -->

  @override
  Widget build(BuildContext context) {
    return Text(
      'data',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
