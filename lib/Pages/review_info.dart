import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:oblack_tech/Widgets/buttons.dart';

class ReviewInfo extends StatelessWidget {
  const ReviewInfo({Key? key}) : super(key: key);

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
                children: [
                  Column(
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
                      const SettingsButton(),
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
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          padding: const EdgeInsets.all(10),
                          color: const Color(0xFFC19151),
                          child: const Center(
                              child: Text(
                            'using our app',
                            style: TextStyle(
                              color: Color(0xFF7E4900),
                            ),
                          )),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          padding: const EdgeInsets.all(10),
                          color: const Color(0xFFC19151),
                          child: const Center(
                              child: Text(
                            'Credits',
                            style: TextStyle(
                              color: Color(0xFF7E4900),
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                  DButton(key: key)
                ],
              ),
            ),
            Container(
              color: const Color(0xFFDA8E00),
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'OverView',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(
                    'watch tutorial',
                    style: TextStyle(
                      color: Color(0xFF7E4900),
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(
                    'review',
                    style: TextStyle(
                      color: Color(0xFF7E4900),
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
