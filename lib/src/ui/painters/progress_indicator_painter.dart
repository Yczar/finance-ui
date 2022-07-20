import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart' as vmath;

import '../../res/colors/ui_colors.dart';

class ProgressIndicatorPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(
      center,
      85,
      Paint()
        ..style = PaintingStyle.stroke
        ..color = Colors.black12
        ..strokeWidth = 30,
    );

    canvas.saveLayer(
      Rect.fromCenter(
        center: center,
        width: 200,
        height: 200,
      ),
      Paint(),
    );

    canvas.drawArc(
      Rect.fromCenter(
        center: center,
        width: 170,
        height: 170,
      ),
      vmath.radians(260),
      vmath.radians(170),
      false,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round
        ..color = UIColors.primaryColor
        ..strokeWidth = 30,
    );
    canvas.drawArc(
      Rect.fromCenter(center: center, width: 155, height: 155),
      vmath.radians(0),
      vmath.radians(360),
      false,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round
        ..color = UIColors.primaryColor
        ..strokeWidth = 15
        ..blendMode = BlendMode.srcIn,
    );
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
