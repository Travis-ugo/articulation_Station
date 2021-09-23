import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oblack_tech/Widgets/buttons.dart';

class CustomImages extends StatelessWidget {
  const CustomImages({Key? key}) : super(key: key);

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
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 450,
                  color: const Color(0xFFE9CDA6),
                  child: Center(
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(maxHeight: 270, maxWidth: 400),
                      child: Container(
                        height: 280,
                        width: 420,
                        color: const Color(0xFF7E4900),
                        child: Center(
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                                maxHeight: 250, maxWidth: 350),
                            child: GridView.count(
                              crossAxisCount: 3,
                              crossAxisSpacing: 4.0,
                              mainAxisSpacing: 8.0,
                              children: List.generate(
                                9,
                                (index) {
                                  return Center(
                                    child: Column(children: [
                                      Container(
                                        height: 100,
                                        width: 100,
                                        color: Colors.white,
                                      ),
                                      const Text(
                                        'picture',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ]),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    LButton(
                      onTap: () {},
                      text: 'add',
                    ),
                    const SizedBox(width: 15),
                    LButton(
                      onTap: () {},
                      text: 'edit',
                    ),
                    const SizedBox(width: 15),
                    LButton(
                      onTap: () {},
                      text: 'delete',
                    ),
                  ],
                )
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
