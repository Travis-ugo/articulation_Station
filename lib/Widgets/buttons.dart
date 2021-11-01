import 'package:flutter/material.dart';
import 'package:oblack_tech/Pages/oblack/settings.dart';
import 'package:oblack_tech/Pages/raw/oblack_widgets.dart';

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
      color: const Color(0xFFB20000),
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

class SettingsButton extends StatelessWidget {
  const SettingsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      color: const Color(0xFFB20000),
      child: Center(
        child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Settings(),
              ),
            );
          },
          icon: const Icon(
            Icons.settings,
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
        height: 30,
        width: 80,
        color: const Color(0xFFB20000),
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
        height: 45,
        width: 45,
        color: const Color(0xFF00FF0C),
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

class Kolor {
  Color backGroundColors = const Color(0xFFC19151);
}

Widget freeFrame(
    {required Widget? child, required double height, required double width}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: kolor.primaryColor,
      border: Border.all(
        width: 25,
        color: kolor.borderColor,
      ),
    ),
    child: Center(
      child: child,
    ),
  );
}

Widget fanceyButttomLine(BuildContext context, {required Widget child}) {
  return Container(
    color: const Color(0xFFDA8E00),
    width: MediaQuery.of(context).size.width,
    height: 50,
    child: child,
  );
}

Widget customFrame({required Widget child}) {
  return Container(
    height: 300,
    width: 470,
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: kolor.primaryColor,
      border: Border.all(
        width: 25,
        color: kolor.borderColor,
      ),
    ),
    child: Center(child: child),
  );
}

Widget smallCustomFrame({required Widget? child}) {
  return Container(
    height: 150,
    width: 350,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: kolor.primaryColor,
      border: Border.all(
        width: 25,
        color: kolor.borderColor,
      ),
    ),
    child: Center(
      child: child,
    ),
  );
}

Widget genderTile(
    {required String gender,
    IconData? icon,
    Color? color,
    required bool isSelected}) {
  if (isSelected) {
    icon = Icons.maps_home_work_rounded;
    color = kolor.primaryColor;
  } else {
    icon = null;
    color = kolor.backGroundColors;
  }
  return Container(
    height: 40,
    color: color,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            gender,
          ),
          Icon(
            icon,
            color: const Color(0xFF00FF0C),
          ),
        ],
      ),
    ),
  );
}
