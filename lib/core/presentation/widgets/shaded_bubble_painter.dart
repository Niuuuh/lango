import 'package:flutter/material.dart';

class ShadedBubblePainter extends CustomPainter {
  ShadedBubblePainter({
    required this.clipper,
    required Color color,
    required Color borderColor,
    required double borderWidth,
    required this.shadowColor,
    required this.shadowOffset,
  })  : _fillPaint = Paint()
    ..color = color
    ..style = PaintingStyle.fill,
        _strokePaint = borderWidth == 0 || borderColor == Colors.transparent
            ? null
            : (Paint()
          ..color = borderColor
          ..strokeWidth = borderWidth
          ..strokeCap = StrokeCap.round
          ..strokeJoin = StrokeJoin.round
          ..style = PaintingStyle.stroke);

  final CustomClipper<Path> clipper;
  final Color shadowColor;
  final Offset shadowOffset;

  final Paint _fillPaint;
  final Paint? _strokePaint;

  @override
  void paint(Canvas canvas, Size size) {
    final path = clipper.getClip(size);

    if (shadowOffset != Offset.zero) {
      final shadowPaint = Paint()..color = shadowColor;
      canvas.save();
      canvas.translate(shadowOffset.dx, shadowOffset.dy);
      canvas.drawPath(path, shadowPaint);
      canvas.restore();
    }

    canvas.drawPath(path, _fillPaint);

    if (_strokePaint != null) {
      canvas.drawPath(path, _strokePaint);
    }
  }

  @override
  bool shouldRepaint(covariant ShadedBubblePainter oldDelegate) => false;
}
