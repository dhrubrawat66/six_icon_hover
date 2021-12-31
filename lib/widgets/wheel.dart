import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_widget.dart';

class WheelPainter extends StatelessWidget {
  const WheelPainter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(200),
      ),
      width: 400,
      height: 400,
      child: Stack(
        children: [
          CustomPaint(
            painter: ArcPainter(),
          ),
          const Positioned(
            left: 180,
            top: 50,
            child: IconWidget(icon: FontAwesomeIcons.facebookF),
          ),
          const Positioned(
            right: 50,
            top: 180,
            child: IconWidget(icon: FontAwesomeIcons.google),
          ),
          const Positioned(
            right: 180,
            bottom: 50,
            child: IconWidget(icon: FontAwesomeIcons.twitter),
          ),
          const Positioned(
            left: 50,
            top: 180,
            child: IconWidget(icon: FontAwesomeIcons.linkedinIn),
          ),
        ],
      ),
    );
  }
}

class ArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;
    var paint1 = Paint()
      ..color = Colors.black54
      ..strokeWidth = 3
      ..style = PaintingStyle.fill;
    final arc1 = Path();

    canvas.drawCircle(const Offset(200, 200), 180, paint);
    canvas.drawLine(const Offset(165, 175), const Offset(51, 95), paint);
    canvas.drawLine(const Offset(238, 170), const Offset(340, 90), paint);
    canvas.drawLine(const Offset(238, 230), const Offset(340, 310), paint);
    canvas.drawLine(const Offset(162, 230), const Offset(55, 310), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
