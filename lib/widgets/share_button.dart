import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:six/widgets/wheel.dart';

class ShareButton extends StatefulWidget {
  const ShareButton({Key? key}) : super(key: key);

  @override
  _ShareButtonState createState() => _ShareButtonState();
}

class _ShareButtonState extends State<ShareButton> {
  double containerWidth = 0;
  double containerHeight = 0;
  double opacity = 0;
  double turn = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 400,
      child: MouseRegion(
        onEnter: (a) {
          setState(() {
            containerHeight = 200;
            containerWidth = 200;
            opacity = 1;
            turn = 1;
          });
        },
        onExit: (a) {
          setState(() {
            opacity = 0;
            turn = 0;
          });
        },
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: AnimatedRotation(
                duration: const Duration(milliseconds: 690),
                turns: turn,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 500),
                  opacity: opacity,
                  child: const WheelPainter(),
                ),
              ),
            ),
            Align(
              child: Container(
                width: 101,
                height: 101,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    width: 7,
                    color: Colors.black,
                  ),
                ),
                child: const Icon(
                  FontAwesomeIcons.shareAlt,
                  size: 50,
                  color: Colors.white60,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
