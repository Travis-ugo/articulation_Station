import 'package:flutter/material.dart';

class SoundButton extends StatelessWidget {
  const SoundButton({Key? key, required this.width, required this.text, required this.onTap})
      : super(key: key);

  final double width;
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: width / 6.666, left: width / 6.666),
            child: Center(
              child: Transform(
                alignment: FractionalOffset.center,
                transform: Matrix4.identity()..rotateZ(15 * 3.1415927),
                child: ClipPath(
                  clipper: ClipB(width: width),
                  child: Container(
                    height: width - 20,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.1),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Transform(
              alignment: FractionalOffset.center,
              transform: Matrix4.identity()..rotateZ(15 * 3.1415927),
              child: ClipPath(
                clipper: ClipB(width: width),
                child: Container(
                  height: width - 20,
                  width: width,
                  color: const Color(0xFFC19151),
                ),
              ),
            ),
          ),
          Center(
            child: ClipPath(
              clipper: ClipB(width: width),
              child: Container(
                height: width - 20,
                width: width,
                color: const Color(0xFF7E4900),
              ),
            ),
          ),
          Center(
            child: Container(
              height: width / 1.858 - 5,
              width: width / 1.858,
              color: const Color(0xFFF0D0A6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: width / 4.25,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFFA5660D),
                    ),
                  ),
                  Text(
                    '/$text/',
                    style: TextStyle(
                      fontSize: width / 8.25,
                      color: const Color(0xFFA5660D),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClipB extends CustomClipper<Path> {
  const ClipB({Key? key, required this.width});
  final double width;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, width - 20);
    path.lineTo(width, 0);
    path.lineTo(size.width - 400, size.height - 400);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
