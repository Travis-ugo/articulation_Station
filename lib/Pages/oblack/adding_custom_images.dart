import 'package:flip_flap/Pages/raw/sound_button.dart';
import 'package:flip_flap/Pages/raw/three_buttons.dart';
import 'package:flip_flap/Repo/authentication/widget.dart';
import 'package:flutter/material.dart';
import '../raw/oblack_widgets.dart';

class AddingCustomimages extends StatelessWidget {
  const AddingCustomimages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _nameController = TextEditingController();
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              freePack(
                                height: 60,
                                width: 80,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.person, color: Colors.white),
                                    SizedBox(),
                                    Text(
                                      'add photo',
                                      style: TextStyle(color: Colors.white, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              freePack(
                                height: 30,
                                width: 170,
                                child: formTile(
                                  controller: _nameController,
                                  hintText: 'Name',
                                ),
                              ),
                              freePack(
                                height: 45,
                                width: 170,
                                child: formTile(
                                  controller: _nameController,
                                  hintText: 'Sentences',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      height: 200,
                      width: 380),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // small box
                      freeFrame(
                          child: SoundButton(
                            width: 80,
                            text: '', onTap: () {  },
                          ),
                          height: 200,
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
