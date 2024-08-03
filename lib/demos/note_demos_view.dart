import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoteDemosView extends StatelessWidget {
  const NoteDemosView({super.key});

  final String _title = 'Create your first note';
  final String _description = 'Add a note';
  final String _importNotes = 'Import notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalpadding,
        child: Column(
          children: [
            PngImagee(path: ImageItemss().appleWithBookWithoutPath),
            _TitleWidget(title: _title),
            Padding(
              padding: PaddingItems.verticalpadding,
              child: _SubTitleWidget(
                title: _description * 10,
              ),
            ),
            const Spacer(),
            _createButton(context),
            TextButton(
              onPressed: () {},
              child: Text(_importNotes),
            ),
            const SizedBox(
              height: ButtonHeights.buttonNormalWeight,
            ),
          ],
        ),
      ),
    );
  }
}

ElevatedButton _createButton(BuildContext context) {
  const String createNote = 'Create a note';
  return ElevatedButton(
    onPressed: () {},
    child: SizedBox(
      height: ButtonHeights.buttonNormalWeight,
      child: Center(
        child: Text(
          createNote,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    ),
  );
}

class ButtonHeights {
  static const double buttonNormalWeight = 50;
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget(
      {super.key, this.textAlign = TextAlign.center, required this.title});

  final TextAlign textAlign;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
    );
  }
}

class ImageItemss {
  final String appleWithBookWithoutPath = "apple_with_book";
}

class PaddingItems {
  static const EdgeInsets horizontalpadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalpadding = EdgeInsets.symmetric(vertical: 20);
}

class PngImagee extends StatelessWidget {
  const PngImagee({super.key, required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameImagePath,
      fit: BoxFit.cover,
    );
  }

  String get _nameImagePath => 'assets/png/$path.png';
}
