import 'package:flutter/material.dart';

class IconLearn extends StatelessWidget {
  IconLearn({super.key});

  final IconSizes iconSize = IconSizes();
  final IconColors iconColor = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: Theme.of(context).colorScheme.error,
              //
              //size: IconSizes().iconSmall,
              size: IconSizes.iconSmall2x,
            ),
          ),
          const SizedBox(height: 50),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: iconColor.froly,
              //size: IconSizes().iconSmall,
              size: iconSize.iconSmall,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: iconColor.froly,
              //size: IconSizes().iconSmall,
              size: iconSize.iconSmall,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: iconColor.froly,
              //size: IconSizes().iconSmall,
              size: iconSize.iconSmall,
            ),
          ),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
  static const double iconSmall2x = 80;
}

class IconColors {
  final Color froly = const Color(0xffED617A);
  // froly rengin adi
}
