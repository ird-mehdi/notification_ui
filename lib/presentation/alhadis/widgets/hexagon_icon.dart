import 'package:flutter/material.dart';

class HexagonIcon extends StatelessWidget {
  final String number;

  const HexagonIcon({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: ClipPath(
        clipper: HexagonClipper(),
        child: Container(
          color: Colors.teal, // Green for hexagon icon background
          child: Center(
            child: Text(
              number,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}

class HexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, size.height / 4);
    path.lineTo(size.width, 3 * size.height / 4);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(0, 3 * size.height / 4);
    path.lineTo(0, size.height / 4);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
