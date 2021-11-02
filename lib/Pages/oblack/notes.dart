import 'package:flip_flap/Pages/raw/three_buttons.dart';
import 'package:flutter/material.dart';
import '../raw/oblack_widgets.dart';

class Notes extends StatelessWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC19151),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customButtons(context),
            Column(
              children: [
                // Frame
                customFrame(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 45,
                        color: kolor.backGroundColors,
                        child: const Center(
                          child: Text(
                            'Notes from session',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      genderTile(gender: 'boy', isSelected: true),
                      genderTile(gender: 'girl', isSelected: false),
                      genderTile(gender: 'boy', isSelected: true),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    LButton(
                      onTap: () {},
                      text: 'Deselect',
                    ),
                    const SizedBox(width: 15),
                    LButton(
                      onTap: () {},
                      text: 'cancel',
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                DButton(key: key),
                SButton(
                  onPressed: () {},
                  pIcons: Icons.volume_up_outlined,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
