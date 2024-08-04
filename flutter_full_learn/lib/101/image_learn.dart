import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  final String _imagePath =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToshpuHRlzOl7w]Jj6Wh9yKkmt-6SlDQ&s';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: 300,
            child: PngImage(
              path: ImageItems().appleBookWithoutPath,
            ),
          ),
          Image.network(
            _imagePath,
            errorBuilder: (context, error, StackTrace) =>
                const Icon(Icons.error),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook = "assets/apple_book.png";
  final String appleBook = "assets/png/apple_with_book.png";
  final String appleBookWithoutPath = "apple_with_book";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.cover,
    );
  }

  String get _nameWithPath => "assets/png/$path.png";
}
