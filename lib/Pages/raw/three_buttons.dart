import 'package:flip_flap/Pages/oblack/home_group_section.dart';
import 'package:flip_flap/Pages/oblack/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: const Color(0xFFB20000),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SettingsPage(),
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

class BackButton extends StatelessWidget {
  const BackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: const Color(0xFFB20000),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class HomeButton extends StatelessWidget {
  const HomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: const Color(0xFFB20000),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeGroup(),
              ),
            );
          },
          icon: const Icon(
            CupertinoIcons.home,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

Widget customButtons(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      HomeButton(),
      SizedBox(height: 20),
      BackButton(),
      SizedBox(height: 20),
      SettingsButton()
    ],
  );
}
