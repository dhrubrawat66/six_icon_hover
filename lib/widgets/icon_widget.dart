import 'package:flutter/material.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final IconData icon;

  @override
  _IconWidgetState createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  Color color = Colors.black;
  double size = 32.0;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (a) {
        setState(() {
          color = Colors.red;
          size = 60;
        });
      },
      onExit: (a) {
        setState(() {
          color = Colors.black;
          size = 50;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeIn,
        child: Icon(
          widget.icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
