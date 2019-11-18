import 'package:flutter/material.dart';

class ImageWithFallback extends StatelessWidget {
  const ImageWithFallback({
    Key key,
    @required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    if (image.isNotEmpty) {
      return Image.network(
        image,
        fit: BoxFit.cover,
      );
    }
    return Container();
  }
}
