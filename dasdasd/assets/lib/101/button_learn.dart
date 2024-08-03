import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              'a',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Save'),
          ),
          const ElevatedButton(
            onPressed: null,
            child: Text('Save'),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.account_balance_wallet),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.admin_panel_settings_outlined),
          ),
          SizedBox(
            width: 200,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(10),
              ),
              onPressed: () {},
              child: const Text('data'),
            ),
          ),
          OutlinedButton.icon(
            onPressed: () {},
            label: const Text('Deneme'),
            icon: const Icon(Icons.animation),
          ),
          InkWell(
            // sadece textin ustune tiklanan buton
            onTap: () {},
            child: const Text('custom'),
          ),
          Container(
            height: 200,
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                )),
            onPressed: () {},
            child: const Padding(
              padding:
                  EdgeInsets.only(top: 20, bottom: 20, right: 40, left: 40),
              child: Text(
                'Place Bid',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
