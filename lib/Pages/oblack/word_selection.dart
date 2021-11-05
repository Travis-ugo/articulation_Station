import 'package:flutter/material.dart';
import 'package:oblack_tech/Pages/raw/three_buttons.dart';
import '../raw/oblack_widgets.dart';

class WordSelection extends StatelessWidget {
  const WordSelection({Key? key}) : super(key: key);

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
                            'For K',
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
                      text: 'Save list',
                    ),
                    const SizedBox(width: 15),
                    LButton(
                      onTap: () {},
                      text: 'Deselect',
                    ),
                    const SizedBox(width: 15),
                    LButton(
                      onTap: () {},
                      text: 'My List',
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
