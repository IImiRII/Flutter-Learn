import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  final String data = 'data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: Text(data * 500),
          ),
          const SizedBox.shrink(), // ekranda bos bir alan
          SizedBox.square(
            dimension: 50,
            child: Text(
              data * 5,
              maxLines: 3,
            ),
          ),
          Container(
            //height: 50,
            // width: 50,
            //color: Colors.red, // eger BoxDecoration kullaniyorsan color'u onun icinde vereceksin
            constraints: const BoxConstraints(
                maxWidth: 200, minWidth: 100, maxHeight: 200, minHeight: 100),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(15),
            decoration: ProjectUtility.boxDecoration,
            child: Text(data * 100),
          ),
        ],
      ),
    );
  }
}

// asagidaki iki class nasil depolanabileceginin 2 farkli ornegi
class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: const LinearGradient(colors: [Colors.red, Colors.black26]),
    boxShadow: const [
      BoxShadow(
        color: Colors.green,
        offset: Offset(0.1, 1),
        blurRadius: 12,
      )
    ],
    //color: Colors.red,
    //shape: BoxShape.circle,
    border: Border.all(
      width: 10,
      color: Colors.white12,
    ),
  );
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(colors: [Colors.red, Colors.black26]),
          boxShadow: const [
            BoxShadow(
              color: Colors.green,
              offset: Offset(0.1, 1),
              blurRadius: 12,
            )
          ],
          //color: Colors.red,
          //shape: BoxShape.circle,
          border: Border.all(
            width: 10,
            color: Colors.white12,
          ),
        );
}
