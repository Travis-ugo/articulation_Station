import 'package:flutter/material.dart';
import 'package:oblack_tech/Widgets/buttons.dart';
import 'package:oblack_tech/Widgets/sound_button.dart';

class HomeGroup extends StatelessWidget {
  const HomeGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC19151),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const CircleRow(),
                  const SizedBox(width: 220),
                  const Icon(
                    Icons.shopping_cart,
                    size: 34,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 15),
                  LButton(onTap: () {}, text: 'Store'),
                ],
              ),
              SizedBox(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: GridView.count(
                  crossAxisCount: 6,
                  crossAxisSpacing: 30.0,
                  mainAxisSpacing: 0,
                  children: List.generate(
                    19,
                    (index) {
                      return const SoundButton(width: 80);
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 600,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    LButton(text: 'Info', onTap: () {}),
                    const SizedBox(width: 15),
                    LButton(text: 'Score', onTap: () {}),
                    const SizedBox(width: 15),
                    LButton(text: 'Group', onTap: () {}),
                    const SizedBox(width: 15),
                    LButton(text: 'Settings', onTap: () {}),
                    const SizedBox(width: 15),
                    LButton(text: 'Multiple', onTap: () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleRow extends StatelessWidget {
  const CircleRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: const [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 15,
            ),
            Text(
              'mac',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ],
        ),
        const SizedBox(width: 15),
        Column(
          children: const [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 15,
            ),
            Text(
              'mac',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ],
        ),
        const SizedBox(width: 15),
        Column(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  width: 0.5,
                  color: const Color(0xFFB20000),
                ),
              ),
            ),
            const Text(
              'mac',
              style: TextStyle(
                color: Color(0xFFB20000),
                fontSize: 10,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
