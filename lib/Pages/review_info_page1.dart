import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oblack_tech/Widgets/buttons.dart';

class ReviewPage1 extends StatelessWidget {
  const ReviewPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC19151),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
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
                      const SizedBox(height: 20),
                      SButton(
                        onPressed: () {},
                        pIcons: Icons.chevron_left,
                      ),
                      const SizedBox(height: 20),
                      SButton(
                        onPressed: () {},
                        pIcons: Icons.settings,
                      ),
                    ],
                  ),
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
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 420,
                            height: 40,
                            color: const Color(0xFFDA8E00),
                            child: const Center(
                              child: Text(
                                'How did we make you feel?',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: const [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 60,
                                  ),
                                  SizedBox(height: 30),
                                  Text(
                                    'Happy',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 30),
                              Column(
                                children: const [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 60,
                                  ),
                                  SizedBox(height: 30),
                                  Text(
                                    'Sad',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  DButton(key: key)
                ],
              ),
            ),
            Container(
              color: const Color(0xFFDA8E00),
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('over View'),
                  SizedBox(width: 30),
                  Text('Watch Tutorial'),
                  SizedBox(width: 30),
                  Text(
                    'review',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
