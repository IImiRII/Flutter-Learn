import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({super.key, this.username});

  final String name = 'Emir';
  final String? username;
  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 41, 32, 32),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ('Buy the best one $name ${name.length}'),
              maxLines: 2, // max 2 satir olsun
              overflow: TextOverflow.ellipsis, // 2 satiri astiginda ... olsun
              textAlign: TextAlign.right,
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontStyle: FontStyle.italic,
                  wordSpacing: 2,
                  letterSpacing: 2,
                  color: ProjectColors.welcomeColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'Emir $name ${name.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              'Emir $name ${name.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: ProjectColors.welcomeColor,
                  ),
            ),
            Text(username ?? ''), // username null ise sagdaki stringi yaz
            Text(keys.welcome),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      wordSpacing: 2,
      letterSpacing: 2,
      color: Colors.lime,
      fontSize: 16,
      fontWeight: FontWeight.w600);
}

class ProjectColors {
  static Color welcomeColor = Colors.yellow;
}

class ProjectKeys {
  final String welcome = 'Merhaba';
}
