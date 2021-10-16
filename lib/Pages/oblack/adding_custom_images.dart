import 'package:flutter/material.dart';
import 'package:oblack_tech/Pages/raw/sound_button.dart';
import 'package:oblack_tech/Pages/raw/three_buttons.dart';
import '../raw/oblack_widgets.dart';

class AddingCustomimages extends StatelessWidget {
  const AddingCustomimages({Key? key}) : super(key: key);

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
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Frame
                  freeFrame(
                      child: const Text('Freem farme'),
                      height: 200,
                      width: 380),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // small box
                      freeFrame(
                          child: const SoundButton(
                            width: 80,
                          ),
                          height: 180,
                          width: 500),
                      const SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
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
