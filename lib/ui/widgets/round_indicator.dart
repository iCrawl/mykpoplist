import 'package:flutter/material.dart';
import 'package:mykpoplist/models/colors.dart';

class RoundPainter extends BoxPainter {
  const RoundPainter({
    @required this.decoration,
    @required VoidCallback onChanged,
  }) : super(onChanged);

  final RoundIndicator decoration;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration config) {
    final Paint paint = Paint();
    paint.color = CustomColors.primaryColor;
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(
      Offset(
        offset.dx + config.size.width / 2.0,
        offset.dy + config.size.height + 5.0,
      ),
      2.0,
      paint,
    );
  }
}

class RoundIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback onChanged]) => RoundPainter(
        decoration: this,
        onChanged: onChanged,
      );
}
