import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mvp_all/styles/style.dart';

class ProgressPaint extends CustomPainter {
  ProgressPaint(this.porcentL);

  var porcentL = 0;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.strokeWidth = 6;
    paint.color = ColorsSelect.btnTextBo1;
    paint.style = PaintingStyle.stroke;

    Offset offset = Offset(size.width * 0.50, size.height * 0.50);
    double radio = size.height / 3;

    canvas.drawCircle(offset, radio, paint);

    // Mitad del Circulo
    final load = Paint();

    load.strokeWidth = 8;
    load.color = ColorsSelect.btnBackgroundBo2;
    load.style = PaintingStyle.stroke;

    double porcentaje = pi * 2 * (porcentL / 100.0);
    Rect rect = Rect.fromCircle(center: offset, radius: radio);
    canvas.drawArc(rect, -pi / 2, porcentaje, false, load);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
