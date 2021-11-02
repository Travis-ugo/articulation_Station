import 'package:flip_flap/Pages/raw/oblack_widgets.dart';
import 'package:flip_flap/Pages/raw/three_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClipBoard extends StatelessWidget {
  const ClipBoard({Key? key}) : super(key: key);

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
                customFrame(child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 85,
                              width: 110,
                              color: const Color(0xFFC19151),
                              child: const Center(
                                child: Text(
                                  'Initail',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              height: 85,
                              width: 110,
                              color: const Color(0xFFC19151),
                              child: const Center(
                                child: Text(
                                  'Initail',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 85,
                              width: 110,
                              color: const Color(0xFFC19151),
                              child: const Center(
                                child: Text(
                                  'Initail',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              height: 85,
                              width: 110,
                              color: const Color(0xFFC19151),
                              child: const Center(
                                child: Text(
                                  'Initail',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),),
                  const SizedBox(height: 20),
                 smallCustomFrame(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: const [
                            CircleAvatar(backgroundColor: Colors.white),
                            SizedBox(width: 10),
                            CircleAvatar(backgroundColor: Colors.white),
                            SizedBox(width: 10),
                            CircleAvatar(backgroundColor: Colors.white),
                            SizedBox(width: 10),
                            CircleAvatar(backgroundColor: Colors.white),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      LButton(
                        onTap: () {},
                        text: 'cancel',
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
