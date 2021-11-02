import 'package:flip_flap/Pages/raw/three_buttons.dart';
import 'package:flutter/material.dart';
import '../raw/oblack_widgets.dart';

class AddCustomImages extends StatelessWidget {
  const AddCustomImages({Key? key}) : super(key: key);

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
                  customFrame(
                    child: GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 0.0,
                      mainAxisSpacing: 0.0,
                      children: List.generate(
                        9,
                        (index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                color: const Color(0xFFFFFFFF),
                                child: Column(
                                  children: const [
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 12,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'mac',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 60,
                                width: 60,
                                color: const Color(0xFFBB863B),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // small box
                      smallCustomFrame(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            SizedBox(width: 10),
                            CircleAvatar(backgroundColor: Colors.white),
                            SizedBox(width: 10),
                            CircleAvatar(backgroundColor: Colors.white),
                            SizedBox(width: 10),
                            CircleAvatar(backgroundColor: Colors.white),
                            SizedBox(width: 10),
                            CircleAvatar(backgroundColor: Colors.white),
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
                        ],
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
