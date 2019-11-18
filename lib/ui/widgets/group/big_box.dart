import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mykpoplist/models/placeholder_data.dart';
import 'package:mykpoplist/ui/widgets/image_with_fallback.dart';

class KpopBigBoxName {
  const KpopBigBoxName({
    @required this.placeholder,
  });

  final PlaceholderData placeholder;

  List<Widget> build(BuildContext context) {
    if (placeholder.name.isNotEmpty && placeholder.romaji.isNotEmpty) {
      return [
        Container(
          margin: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 60.0),
          alignment: Alignment.bottomLeft,
          child: Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                child: Text(
                  placeholder.romaji,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 20.0),
          alignment: Alignment.bottomLeft,
          child: Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                child: Text(
                  placeholder.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 35.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ];
    } else if (placeholder.name.isEmpty) {
      return [
        Container(
          margin: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 20.0),
          alignment: Alignment.bottomLeft,
          child: Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                child: Text(
                  placeholder.romaji,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ];
    } else {
      return [
        Container(
          margin: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 20.0),
          alignment: Alignment.bottomLeft,
          child: Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                child: Text(
                  placeholder.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 48.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ];
    }
  }
}

class KpopBigBox extends StatelessWidget {
  const KpopBigBox({
    Key key,
    this.offset = 0.0,
    @required this.maxExtent,
    @required this.placeholder,
  }) : super(key: key);

  final double offset;
  final double maxExtent;
  final PlaceholderData placeholder;

  double opacity(double shrinkOffset) =>
      1.0 - max(0.0, shrinkOffset) / maxExtent;

  double opacityReverse(double shrinkOffset) =>
      0.0 + max(1.0, shrinkOffset) / maxExtent;

  @override
  Widget build(BuildContext context) => Hero(
        tag: placeholder.hero,
        child: Stack(
          fit: StackFit.passthrough,
          children: <Widget>[
            ImageWithFallback(
              image: placeholder.image,
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color.fromRGBO(0, 0, 0, 0.0),
                    const Color.fromRGBO(0, 0, 0, 0.50),
                  ],
                ),
              ),
            ),
            ...KpopBigBoxName(
              placeholder: placeholder,
            ).build(context),
            Container(
              color: Colors.white.withOpacity(
                opacityReverse(offset),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 10.0),
              alignment: Alignment.bottomLeft,
              child: Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      placeholder.romaji.isNotEmpty
                          ? '${placeholder.romaji} (${placeholder.name})'
                          : placeholder.name,
                      style: TextStyle(
                        color: Colors.black.withOpacity(
                          opacityReverse(offset),
                        ),
                        fontFamily: 'Roboto',
                        fontSize: 28.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
