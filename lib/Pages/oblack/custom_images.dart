import 'package:flip_flap/Pages/raw/oblack_widgets.dart';
import 'package:flip_flap/Pages/raw/three_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
           customButtons(context),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               customFrame(
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 8.0,
                    children: List.generate(
                      9,
                      (index) {
                        return Column(
                          children: [
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
                          ],
                        );
                      },
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
