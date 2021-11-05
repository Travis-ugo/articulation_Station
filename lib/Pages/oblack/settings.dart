import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../raw/oblack_widgets.dart';
import '../raw/three_buttons.dart';

// unfinshed Business

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC19151),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(child: HomeButton()),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Frame
                customFrame(
                  child: scoringButton(),
                ),
                addCustomImage()
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ListTile(
        title: const Text(
          ' Back on Track Track',
          style: TextStyle(fontSize: 14),
        ),
        subtitle: const Text(
          ' Back on Track',
          style: TextStyle(fontSize: 14),
        ),
        trailing: ToggleSwitch(
          borderWidth: 0.7,
          borderColor: const [Colors.black],
          minWidth: 20.0,
          minHeight: 20,
          cornerRadius: 5.0,
          activeBgColors: [
            const [Colors.black],
            [Colors.red[800]!]
          ],
          activeFgColor: Colors.white,
          inactiveBgColor: Colors.grey,
          inactiveFgColor: Colors.white,
          initialLabelIndex: 1,
          totalSwitches: 2,
          labels: const ['True', 'False'],
          radiusStyle: true,
          onToggle: (index) {
            // print('switched to: $index');
          },
        ),
      ),
    ],
  );
}
