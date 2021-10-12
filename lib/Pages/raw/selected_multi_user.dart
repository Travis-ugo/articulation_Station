import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oblack_tech/Widgets/buttons.dart';

class SelectedMutiUser extends StatelessWidget {
  const SelectedMutiUser({Key? key}) : super(key: key);

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
                const SettingsButton(),
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
                          child: Center(
                            child: Container(
                              height: 100,
                              width: 320,
                              color: const Color(0xFF7E4900),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                          )),
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
