import 'package:flutter/material.dart';

class SButton extends StatelessWidget {
  const SButton({Key? key, required this.pIcons, required this.onPressed})
      : super(key: key);
  final IconData pIcons;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      color: Colors.redAccent,
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            pIcons,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

// Long button
class LButton extends StatelessWidget {
  const LButton({Key? key, required this.text, required this.onTap})
      : super(key: key);
  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 100,
        color: Colors.redAccent,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class DButton extends StatelessWidget {
  const DButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Container(
        height: 60,
        width: 60,
        color: Colors.greenAccent,
        child: const Center(
            child: Text(
          'Done',
          style: TextStyle(
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
