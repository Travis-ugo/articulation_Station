import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oblack_tech/Widgets/buttons.dart';

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
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SButton(
                  onPressed: () {},
                  pIcons: CupertinoIcons.home,
                ),
                SButton(
                  onPressed: () {},
                  pIcons: Icons.chevron_left,
                ),
                SButton(
                  onPressed: () {},
                  pIcons: Icons.settings,
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 300,
                    width: 450,
                    decoration: BoxDecoration(
                      color: const Color(0xFF7E4900),
                      border: Border.all(
                        width: 25,
                        color: const Color(0xFFE9CDA6),
                      ),
                    ),
                    child: Row(
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
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 150,
                    width: 350,
                    decoration: BoxDecoration(
                      color: const Color(0xFF7E4900),
                      border: Border.all(
                        width: 25,
                        color: const Color(0xFFE9CDA6),
                      ),
                    ),
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
