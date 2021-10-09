import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'oblack_widgets.dart';

// unfinshed Business

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC19151),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SButton(
              onPressed: () {},
              pIcons: CupertinoIcons.home,
            ),
            Column(
              children: [
                // Frame
                customFrame(
                  child: scoringButton(),
                ),
                const SizedBox(height: 20),
                addCustomImage()
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

Widget addCustomImage() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 35,
      width: 160,
      color: const Color(0xFFB20000),
      child: const Center(
        child: Text(
          'Add Custom Images',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}

Widget scoringButton() {
  return SizedBox(
    width: 50,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          ' Back on Track Track',
          style: TextStyle(fontSize: 20),
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              ' Back on Track',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(width: 5),
            Container(
              height: 25,
              width: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.9,
                  color: Colors.black,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 20,
                    width: 27,
                    color: Colors.black,
                  ),
                  const Text(
                    'now',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
