import 'package:flutter/material.dart';

class CurvedShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.0,
      child: CustomPaint(
        painter: _MyPainter(),
      ),
    );
  }
}

class _MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    new RadialGradient(
      colors: <Color>[
        Colors.green.withOpacity(1.0),
        Colors.green.withOpacity(0.3),
      ],
    );

    Paint paint = new Paint();
    paint.style = PaintingStyle.fill;
    paint.color = Color(0xFFff9800);

    Path path = Path();
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(size.width / 2, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
