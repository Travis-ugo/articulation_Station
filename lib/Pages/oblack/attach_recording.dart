import 'package:flip_flap/Pages/raw/three_buttons.dart';
import 'package:flutter/material.dart';
import '../raw/oblack_widgets.dart';

class Attachrecording extends StatelessWidget {
  const Attachrecording({Key? key}) : super(key: key);

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
                            'Select the recording to attach',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      genderTile(gender: 'boy.mp3', isSelected: true),
                      genderTile(gender: 'girl.mp3', isSelected: false),
                      genderTile(gender: 'boy.mp3', isSelected: true),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    LButton(
                      onTap: () {},
                      text: 'Delete all',
                    ),
                    const SizedBox(width: 15),
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
