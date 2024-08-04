import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            maxLength: 100,
            buildCounter: (BuildContext context,
                {int? currentLength, bool? isFocused, int? maxLength}) {
              return _animatedContainer(currentLength);
            },
            keyboardType: TextInputType.emailAddress,
            autofocus: true,
            autofillHints: const [AutofillHints.email],
            focusNode: focusNodeTextFieldOne,
            // girilen harfe hic bastiramama ozelligi
            inputFormatters: [
              TextProjectInputFormater()._formatter,
            ],
            textInputAction: TextInputAction.next,
            decoration: _InputDecaretor().emailInput,
          ),
          TextFormField(
            focusNode: focusNodeTextFieldTwo,
            minLines: 2,
            maxLines: 4,
            //style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}

AnimatedContainer _animatedContainer(int? currentLength) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 100),
    color: Colors.green,
    //color: Colors.green[100 * ((currentLength ?? 0) ~/ 2)],
    // null ise default 0 al, ~ isareti integer yapar
    height: 10,
    width: 10.0 * (currentLength ?? 0),
  );
}

class TextProjectInputFormater {
  final _formatter = TextInputFormatter.withFunction(
    (oldValue, newValue) {
      if (oldValue.text == 'a') {
        return oldValue;
      }
      return oldValue;
    },
  );
}

class _InputDecaretor {
  final emailInput = const InputDecoration(
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
    labelText: LanguageItems.mailTitle,
    //hintText: 'Mail',
    // fillColor ve filled ayni anda kullanilmasi gerek!
    //fillColor: Colors.white,
    //filled: true,
  );
}
