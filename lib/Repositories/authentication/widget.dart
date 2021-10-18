import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header(this.heading);
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        heading,
        style: const TextStyle(
          fontSize: 56,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class Paragraph extends StatelessWidget {
  const Paragraph(this.content);
  final String content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Text(
        content,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}

class StyledButton extends StatelessWidget {
  const StyledButton(
      {Key? key,
      required this.child,
      required this.onPressed,
      required this.colorss})
      : super(key: key);
  final Widget child;
  final void Function() onPressed;
  final Color colorss;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: InkWell(
        splashColor: Colors.white,
        onTap: onPressed,
        child: Container(
          color: colorss,
          height: 50,
          width: MediaQuery.of(context).size.width - 80,
          child: Center(child: child),
        ),
      ),
    );
  }
}
